# Deprecated Messages

>❗️ Deprecated Messages
>
> The following network messages have been deprecated and should no longer be used.

## Alert

:::{deprecated} 0.15.0
:::

*Added in protocol version 311.*
*Removed by Bitcoin in protocol version 70013, but retained by Dash until 0.15.0.*

The `alert` message warns nodes of problems that may affect them or the rest of the network. Each `alert` message is signed using a key controlled by respected community members, mostly Dash Core developers.

To ensure all nodes can validate and forward `alert` messages, encapsulation is used. Developers create an alert using the data structure appropriate for the versions of the software they want to notify; then they serialize that data and sign it. The serialized data and its signature make up the outer `alert` message---allowing nodes which don't understand the data structure to validate the signature and relay the alert to nodes which do understand it. The nodes which actually need the message can decode the serialized data to access the inner `alert` message.

The outer `alert` message has four fields:

| Bytes       | Name            | Data Type        | Description
|-------------|-----------------|------------------|-------------
| *Variable*  | alert bytes     | compactSize uint | The number of bytes in following alert field.
| *Variable*  | alert           | uchar            | The serialized alert.  See below for a description of the current alert format.
| *Variable*  | signature bytes | compactSize uint | The number of bytes in the following signature field.
| *Variable*  | signature       | uchar            | A DER-encoded ECDSA (secp256k1) signature of the alert signed with the developer's alert key.

Although designed to be easily upgraded, the format of the inner serialized alert has not changed since the `alert` message was first introduced in protocol version 311.

| Bytes    | Name              | Data Type                 | Description
|----------|-------------------|---------------------------|-------------
| 4        | version           | int32_t                   | Alert format version.  Version 1 from protocol version 311 through at least protocol version 70002.
| 8        | relayUntil        | int64_t                   | The time beyond which nodes should stop relaying this alert.  Unix epoch time format.
| 8        | expiration        | int64_t                   | The time beyond which this alert is no longer in effect and should be ignored.  Unix epoch time format.
| 4        | ID                | int32_t                   | A unique ID number for this alert.
| 4        | cancel            | int32_t                   | All alerts with an ID number less than or equal to this number should be canceled: deleted and not accepted in the future.
| *Varies* | setCancel count   | compactSize uint          | The number of IDs in the following setCancel field.  May be zero.
| *Varies* | setCancel         | int32_t                   | Alert IDs which should be canceled.  Each alert ID is a separate int32_t number.
| 4        | minVer            | int32_t                   | This alert only applies to protocol versions greater than or equal to this version. Nodes running other protocol versions should still relay it.
| 4        | maxVer            | int32_t                   | This alert only applies to protocol versions less than or equal to this version. Nodes running other protocol versions should still relay it.
| *Varies* | user\_agent count | compactSize uint          | The number of user agent strings in the following setUser\_agent field.  May be zero.
| *Varies* | setUser\_agent    | compactSize uint + string | If this field is empty, it has no effect on the alert.  If there is at least one entry is this field, this alert only applies to programs with a user agent that exactly matches one of the strings in this field.  Each entry in this field is a compactSize uint followed by a string---the uint indicates how many bytes are in the following string.  This field was originally called setSubVer; since BIP14, it applies to user agent strings as defined in the [`version` message](../reference/p2p-network-control-messages.md#version).
| 4        | priority          | int32_t                   | Relative priority compared to other alerts.
| *Varies* | comment bytes     | compactSize uint          | The number of bytes in the following comment field.  May be zero.
| *Varies* | comment           | string                    | A comment on the alert that is not displayed.
| *Varies* | statusBar bytes   | compactSize uint          | The number of bytes in the following statusBar field.  May be zero.
| *Varies* | statusBar         | string                    | The alert message that is displayed to the user.
| *Varies* | reserved bytes    | compactSize uint          | The number of bytes in the following reserved field.  May be zero.
| *Varies* | reserved          | string                    | Reserved for future use.  Originally called RPC Error.  

The annotated hexdump below shows an `alert` message. (The message header has been omitted.)

``` text
73 ................................. Bytes in encapsulated alert: 115
01000000 ........................... Version: 1
3766404f00000000 ................... RelayUntil: 1329620535
b305434f00000000 ................... Expiration: 1330917376

f2030000 ........................... ID: 1010
f1030000 ........................... Cancel: 1009
00 ................................. setCancel count: 0

10270000 ........................... MinVer: 10000
48ee0000 ........................... MaxVer: 61000
00 ................................. setUser_agent bytes: 0
64000000 ........................... Priority: 100

00 ................................. Bytes In Comment String: 0
46 ................................. Bytes in StatusBar String: 70
53656520626974636f696e2e6f72672f
666562323020696620796f7520686176
652074726f75626c6520636f6e6e6563
74696e67206166746572203230204665
627275617279 ....................... Status Bar String: "See [...]"
00 ................................. Bytes In Reserved String: 0

47 ................................. Bytes in signature: 71
30450221008389df45f0703f39ec8c1c
c42c13810ffcae14995bb648340219e3
53b63b53eb022009ec65e1c1aaeec1fd
334c6b684bde2b3f573060d5b70c3a46
723326e4e8a4f1 ..................... Signature
```

**Alert key compromise:** Dash Core's source code defines a particular set of alert parameters that can be used to notify users that the alert signing key has been compromised and that they should upgrade to get a new alert public key. Once a signed alert containing those parameters has been received, no other alerts can cancel or override it.

## islock

:::{deprecated} 20.1.0
Dash protocol version 70231 removed support for non-deterministic InstantSend. The [`isdlock` message](../reference/p2p-network-instantsend-messages.md#isdlock) with expanded features replaced this message.
:::

The [`islock` message](../reference/p2p-network-deprecated-messages.md#islock) is used to provide details of transactions that have been locked by LLMQ-based InstantSend. The message includes the details of all transaction [inputs](../resources/glossary.md#input) along with the transaction ID and the BLS [signature](../resources/glossary.md#signature) of the [LLMQ](../resources/glossary.md#long-living-masternode-quorum) that approved the transaction lock.

| Bytes | Name | Data type | Description |
| --- | --- | --- | --- |
| 1-9 | inputsSize | compactSize uint | Number of inputs |
| 36 * `inputsSize`| inputs | COutPoint | Outpoints used in the transaction |
| 32 | txid | uint256 | TXID of the locked transaction |
| 96 | sig | byte[] | LLMQ BLS Signature |

The following annotated hexdump shows a [`islock` message](../reference/p2p-network-deprecated-messages.md#islock). (The message header has been omitted.)

``` text
02 ......................................... Number of inputs: 2

Input 1
| 05f24f65a9d98ff543ba61f7f0ce9448
| 79632bf2517540a5bd8bde2fe8e94617 ......... Previous outpoint TXID
| 00000000 ................................. Previous outpoint index: 0

Input 2
| 05f24f65a9d98ff543ba61f7f0ce9448
| 79632bf2517540a5bd8bde2fe8e94617 ......... Previous outpoint TXID
| 01000000 ................................. Previous outpoint index: 1

e2e1c797576d8b13c83e929684b9aacd
553c20a34e2d11e38bdcaaf8e1de1680 ........... TXID

0f055c2064885d446f83d51b9bb09892
7ea0375a0f6a3f3402abf158ece67e00
81049b8a8f45d254b64574cef194ef31
197e450fba1196d652f2e1421d3b80ae
f429c10eabd4ab9289e9a8f80f6989b7
a11e5e7930deccc3e11a931fc9524f06 ........... LLMQ BLS Signature (96 bytes)
```

## ix

:::{deprecated} 0.15.0
:::

The `ix` message (transaction lock request) has the same structure as the [`tx` message](../reference/p2p-network-data-messages.md#tx). The masternode network responds with `txlvote` messages if the transaction inputs can be locked.

## reject

:::{deprecated} 19.0.0
:::

*Added in protocol version 70002 as described by BIP61.*

The [`reject` message](#reject) informs the receiving [node](../resources/glossary.md#node) that one of its previous messages has been rejected.

| Bytes    | Name          | Data Type        | Description
|----------|---------------|------------------|--------------
| *Varies* | message bytes | compactSize uint | The number of bytes in the following message field.
| *Varies* | message       | string           | The type of message rejected as ASCII text *without null padding*.  For example: "tx", "block", or "version".
| 1        | code          | char             | The reject message code.  See the table below.
| *Varies* | reason bytes  | compactSize uint | The number of bytes in the following reason field.  May be 0x00 if a text reason isn't provided.
| *Varies* | reason        | string           | The reason for the rejection in ASCII text.  This should not be displayed to the user; it is only for debugging purposes.
| *Varies* | extra data    | *varies*         | Optional additional data provided with the rejection.  For example, most rejections of [`tx` messages](../reference/p2p-network-data-messages.md#tx) or [`block` messages](../reference/p2p-network-data-messages.md#block) include the hash of the rejected transaction or block header.  See the code table below.

The following table lists message reject codes.  Codes are tied to the type of message they reply to; for example there is a 0x10 reject code for transactions and a 0x10 reject code for blocks.

| Code | In Reply To       | Extra Bytes | Extra Type | Description
|------|-------------------|-------------|------------|----------------
| 0x01 | *any message*     | 0           | N/A        | Message could not be decoded.  Be careful of [`reject` message](#reject) feedback loops where two peers each don't understand each other's [`reject` messages](#reject) and so keep sending them back and forth forever.
| 0x10 | [`block` message](../reference/p2p-network-data-messages.md#block)   | 32          | char[32]   | Block is invalid for some reason (invalid proof-of-work, invalid signature, etc).  Extra data may include the rejected block's header hash.
| 0x10 | [`tx` message](../reference/p2p-network-data-messages.md#tx)      | 32          | char[32]   | Transaction is invalid for some reason (invalid signature, output value greater than input, etc.).  Extra data may include the rejected transaction's TXID.
| 0x10 | `ix` message      | 32          | char[32]   | InstantSend transaction is invalid for some reason (invalid tx lock request, conflicting tx lock request, etc.).  Extra data may include the rejected transaction's TXID.
| 0x11 | [`block` message](../reference/p2p-network-data-messages.md#block)   | 32          | char[32]   | The block uses a version that is no longer supported.  Extra data may include the rejected block's header hash.
| 0x11 | [`version` message](../reference/p2p-network-control-messages.md#version) | 0           | N/A        | Connecting node is using a protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`dsa` message](../reference/p2p-network-privatesend-messages.md#dsa)     | 0           | N/A        | Connecting node is using a CoinJoin protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`dsi` message](../reference/p2p-network-privatesend-messages.md#dsi)     | 0           | N/A        | Connecting node is using a CoinJoin protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`dsc` message](../reference/p2p-network-privatesend-messages.md#dsc)     | 0           | N/A        | Connecting node is using a CoinJoin protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`dsf` message](../reference/p2p-network-privatesend-messages.md#dsf)     | 0           | N/A        | Connecting node is using a CoinJoin protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`dsq` message](../reference/p2p-network-privatesend-messages.md#dsq)     | 0           | N/A        | Connecting node is using a CoinJoin protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`dssu` message](../reference/p2p-network-privatesend-messages.md#dssu)    | 0           | N/A        | Connecting node is using a CoinJoin protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`govsync` message](../reference/p2p-network-governance-messages.md#govsync) | 0           | N/A        | Connecting node is using a governance protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`govobj` message](../reference/p2p-network-governance-messages.md#govobj)  | 0           | N/A        | Connecting node is using a governance protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | [`govobjvote` message](../reference/p2p-network-governance-messages.md#govobjvote) | 0           | N/A        | Connecting node is using a governance protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | `mnget` message   | 0           | N/A        | Connecting node is using a masternode payment protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | `mnw` message     | 0           | N/A        | Connecting node is using a masternode payment protocol version that the rejecting node considers obsolete and unsupported.
| 0x11 | `txlvote` message | 0           | N/A        | Connecting node is using an InstantSend protocol version that the rejecting node considers obsolete and unsupported.
| 0x12 | [`tx` message](../reference/p2p-network-data-messages.md#tx)      | 32          | char[32]   | Duplicate input spend (double spend): the rejected transaction spends the same input as a previously-received transaction.  Extra data may include the rejected transaction's TXID.
| 0x12 | [`version` message](../reference/p2p-network-control-messages.md#version) | 0           | N/A        | More than one [`version` message](../reference/p2p-network-control-messages.md#version) received in this connection.
| 0x40 | [`tx` message](../reference/p2p-network-data-messages.md#tx)      | 32          | char[32]   | The transaction will not be mined or relayed because the rejecting node considers it non-standard---a transaction type or version unknown by the server.  Extra data may include the rejected transaction's TXID.
| 0x41 | [`tx` message](../reference/p2p-network-data-messages.md#tx)      | 32          | char[32]   | One or more output amounts are below the dust threshold.  Extra data may include the rejected transaction's TXID.
| 0x42 | [`tx` message](../reference/p2p-network-data-messages.md#tx)      |             | char[32]   | The transaction did not have a large enough fee or priority to be relayed or mined.  Extra data may include the rejected transaction's TXID.
| 0x43 | [`block` message](../reference/p2p-network-data-messages.md#block)   | 32          | char[32]   | The block belongs to a block chain which is not the same block chain as provided by a compiled-in checkpoint.  Extra data may include the rejected block's header hash.

Reject Codes

| Code | Description
|------|--------------
| 0x01 | Malformed
| 0x10 | Invalid
| 0x11 | Obsolete
| 0x12 | Duplicate
| 0x40 | Non-standard
| 0x41 | Dust
| 0x42 | Insufficient fee
| 0x43 | Checkpoint

The annotated hexdump below shows a [`reject` message](#reject). (The message header has been omitted.)

``` text
02 ................................. Number of bytes in message: 2
7478 ............................... Type of message rejected: tx
12 ................................. Reject code: 0x12 (duplicate)
15 ................................. Number of bytes in reason: 21
6261642d74786e732d696e707574732d
7370656e74 ......................... Reason: bad-txns-inputs-spent
394715fcab51093be7bfca5a31005972
947baf86a31017939575fb2354222821 ... TXID
```

## txlvote

:::{deprecated} 0.15.0
:::

The `txlvote` message (transaction lock vote) is sent by masternodes to indicate approval of a transaction lock request `ix` message.

| Bytes | Name | Data type | Required | Description |
| ---------- | ----------- | --------- | -------- | -------- |
| 32 | txHash | uint256 | Required | TXID of the transaction to lock
| 36 | outPoint | outpoint | Required | The unspent outpoint to lock in this transaction
| 36 | outpointMasternode | outpoint | Required | The outpoint of the masternode which is signing the vote
| 32 | quorumModifierHash | uint256 | Required | *Added in protocol version 70213. Only present when Spork 15 is active.*<br><br>
| 32 | masternodeProTxHash | uint256 | Required | *Added in protocol version 70213. Only present when Spork 15 is active.*<br><br>The proTxHash of the DIP3 masternode which is signing the vote
| 96 | vchMasternodeSignature | char[] | Required | Masternode BLS signature

The following annotated hexdump shows a `txlvote` message. (The message header has been omitted.)

``` text
84a27bb879f316482598fe65b0b51544
e85490d85fc36af1c293e186da373c02 ..... TXID

Outpoint to lock
| 4c1e6318bab4f9284d3bc0e49ec7fe76
| 1e9c914b8ea0bcac4563005daa451221 ... Outpoint TXID
| 00000000 ........................... Outpoint index number: 0

Masternode Outpoint
| 5d02f07c7318411e41fdd4be9f1e5ece
| 16d680cfe318306087edc8fb205e507b ... Outpoint TXID
| 01000000 ........................... Outpoint index number: 1

b62cb5007704d2db8595d5b31cfb7cb0
8d7e530c16a7597e1db4430a00000000 ..... Quorum Modifier hash

569abbea4ab45f36dd059c44f1dc0804
f3f13071379c2f418d3637fb548c4159 ..... Masternode ProRegTx hash

60 ................................... Signature length: 96

0b0b97ec14fbc1f12566c3a90ed113e4
e9c5ee6cdcf2fe2171e4b5f387286146
a0632a250d64ea507ce5e1d1f1983aae
0b70e568ad2856a0cc13008001c6d0f3
5bdeb380f6aba0c54663a3b5e2d86d44
305c2e5d855c72588ffb0e8e2a36482c ..... Masternode BLS Signature
```
