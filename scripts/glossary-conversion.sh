#!/bin/bash

# Replace readme.io's proprietary <<glossary:term>> syntax with markdown links to the terms on the
# glossary page (glossary.md)
find . -iname "*.md" -exec sed -i 's~<<glossary:address>>~[address](../resources/glossary.md#address)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block>>~[block](../resources/glossary.md#block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocks-first>>~[blocks-first](../resources/glossary.md#blocks-first-sync)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block chain>>~[block chain](../resources/glossary.md#block-chain)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block header>>~[block header](../resources/glossary.md#block-header)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block height>>~[block height](../resources/glossary.md#block-height)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block reward>>~[block reward](../resources/glossary.md#block-reward)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:bloom filter>>~[bloom filter](../resources/glossary.md#bloom-filter)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:masternode>>~[masternode](../resources/glossary.md#masternode)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block size limit>>~[block size limit](../resources/glossary.md#block-size-limit)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocks-first-sync>>~[blocks-first-sync](../resources/glossary.md#blocks-first-sync)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocktransactions>>~[blocktransactions](../resources/glossary.md#blocktransactions)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocktransactionsrequest >>~[blocktransactionsrequest ](../resources/glossary.md#blocktransactionsrequest s)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:chain code>>~[chain code](../resources/glossary.md#chain-code)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:ChainLocks>>~[ChainLocks](../resources/glossary.md#ChainLock)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:change>>~[change](../resources/glossary.md#change)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:child key>>~[child key](../resources/glossary.md#child-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:child pays for parent>>~[child pays for parent](../resources/glossary.md#child-pays-for-parent)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:cpfp>>~[cpfp](../resources/glossary.md#cpfp)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinbase>>~[coinbase](../resources/glossary.md#coinbase)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinbase block height>>~[coinbase block height](../resources/glossary.md#coinbase-block-height)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinbase transaction>>~[coinbase transaction](../resources/glossary.md#coinbase-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinjoin>>~[coinjoin](../resources/glossary.md#coinjoin)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:CompactSize unsigned integer>>~[CompactSize unsigned integer](../resources/glossary.md#compactsize)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:compressed public key>>~[compressed public key](../resources/glossary.md#compressed-public-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:confirmation score>>~[confirmation score](../resources/glossary.md#confirmation-score)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:RBF>>~[RBF](../resources/glossary.md#rbf)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:consensus>>~[consensus](../resources/glossary.md#consensus)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:consensus rules>>~[consensus rules](../resources/glossary.md#consensus-rules)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Dark Gravity Wave>>~[Dark Gravity Wave](../resources/glossary.md#dark-gravity-wave)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Dash address encoding>>~[Dash address encoding](../resources/glossary.md#dash-address-encoding)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:data-pushing opcode>>~[data-pushing opcode](../resources/glossary.md#data-pushing-opcode)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Decentralized Governance By Blockchain>>~[Decentralized Governance By Blockchain](../resources/glossary.md#decentralized-governance-by-blockchain)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:denominations>>~[denominations](../resources/glossary.md#denominations)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:devnet>>~[devnet](../resources/glossary.md#devnet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:difficulty>>~[difficulty](../resources/glossary.md#difficulty)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:DNS seeds>>~[DNS seeds](../resources/glossary.md#dns-seed)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:double spend>>~[double spend](../resources/glossary.md#double-spend)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:duffs>>~[duffs](../resources/glossary.md#duffs)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:ecdsa-private-key>>~[ecdsa-private-key](../resources/glossary.md#ecdsa-private-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:escrow contract>>~[escrow contract](../resources/glossary.md#escrow-contract)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Evolution>>~[Evolution](../resources/glossary.md#evolution)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:extended key>>~[extended key](../resources/glossary.md#extended-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:extended private key>>~[extended private key](../resources/glossary.md#extended-private-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:fork>>~[fork](../resources/glossary.md#fork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:genesis block>>~[genesis block](../resources/glossary.md#genesis-block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:hard fork>>~[hard fork](../resources/glossary.md#hard-fork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:hardened extended key>>~[hardened extended key](../resources/glossary.md#hardened-extended-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:HD wallet>>~[HD wallet](../resources/glossary.md#hd-wallet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:HD wallet seed>>~[HD wallet seed](../resources/glossary.md#hd-wallet-seed)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:header chain>>~[header chain](../resources/glossary.md#header-chain)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:headerandshortids>>~[headerandshortids](../resources/glossary.md#headerandshortids)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:headers-first>>~[headers-first](../resources/glossary.md#headers-first)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:high-priority transaction>>~[high-priority transaction](../resources/glossary.md#high-priority-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:IBD>>~[IBD](../resources/glossary.md#ibd)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:initial block download>>~[initial block download](../resources/glossary.md#initial-block-download)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:input>>~[input](../resources/glossary.md#input)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:InstantSend>>~[InstantSend](../resources/glossary.md#instantsend)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:internal byte order>>~[internal byte order](../resources/glossary.md#internal-byte-order)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:inventory>>~[inventory](../resources/glossary.md#inventory)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:key index>>~[key index](../resources/glossary.md#key-index)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:key pair>>~[key pair](../resources/glossary.md#key-pair)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:locktime>>~[locktime](../resources/glossary.md#locktime)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Long-Living Masternode Quorum>>~[Long-Living Masternode Quorum](../resources/glossary.md#long-living-masternode-quorum)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:M-of-N multisig>>~[M-of-N multisig](../resources/glossary.md#m-of-n-multisig)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:mainnet>>~[mainnet](../resources/glossary.md#mainnet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Majority Hash Rate Attack>>~[Majority Hash Rate Attack](../resources/glossary.md#majority-hash-rate-attack)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:malleability>>~[malleability](../resources/glossary.md#malleability)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:master chain code and private key>>~[master chain code and private key](../resources/glossary.md#master-chain-code-and-private-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:master private key>>~[master private key](../resources/glossary.md#master-private-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:merkle block>>~[merkle block](../resources/glossary.md#merkle-block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:merkle root>>~[merkle root](../resources/glossary.md#merkle-root)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:merkle tree>>~[merkle tree](../resources/glossary.md#merkle-tree)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:message header>>~[message header](../resources/glossary.md#message-header)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Miner Activated Soft Fork>>~[Miner Activated Soft Fork](../resources/glossary.md#miner-activated-soft-fork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:minimum relay fee>>~[minimum relay fee](../resources/glossary.md#minimum-relay-fee)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:mining>>~[mining](../resources/glossary.md#mining)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:multi-phased fork>>~[multi-phased fork](../resources/glossary.md#multi-phased-fork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:nBits>>~[nBits](../resources/glossary.md#nbits)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:network>>~[network](../resources/glossary.md#network)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:node>>~[node](../resources/glossary.md#node)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:null data (OP_RETURN) transaction>>~[null data (OP_RETURN) transaction](../resources/glossary.md#null-data-op_return-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:opcode>>~[opcode](../resources/glossary.md#opcode)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:orphan block>>~[orphan block](../resources/glossary.md#orphan-block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:outpoint>>~[outpoint](../resources/glossary.md#outpoint)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:output>>~[output](../resources/glossary.md#output)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:output index>>~[output index](../resources/glossary.md#output-index)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:P2PKH address>>~[P2PKH address](../resources/glossary.md#p2pkh-address)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:P2SH address>>~[P2SH address](../resources/glossary.md#p2sh-address)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:P2SH multisig>>~[P2SH multisig](../resources/glossary.md#p2sh-multisig)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:parent key>>~[parent key](../resources/glossary.md#parent-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:payment protocol>>~[payment protocol](../resources/glossary.md#payment-protocol)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:point function>>~[point function](../resources/glossary.md#point-function)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:previous block header hash>>~[previous block header hash](../resources/glossary.md#previous-block-header-hash)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:PrivateSend>>~[PrivateSend](../resources/glossary.md#privatesend)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:proof of work>>~[proof of work](../resources/glossary.md#proof-of-work)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:pubkey script>>~[pubkey script](../resources/glossary.md#pubkey-script)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:public key>>~[public key](../resources/glossary.md#public-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:raw format>>~[raw format](../resources/glossary.md#raw-format)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:redeem script>>~[redeem script(../resources/glossary.md#redeem-script)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:regression test mode>>~[regression test mode](../resources/glossary.md#regression-test-mode)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:root seed>>~[root seed](../resources/glossary.md#root-seed)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:RPC byte order>>~[RPC byte order](../resources/glossary.md#rpc-byte-order)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:secp256k1 signatures>>~[secp256k1 signatures](../resources/glossary.md#secp256k1-signatures)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Sentinel>>~[Sentinel](../resources/glossary.md#sentinel)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:sequence number>>~[sequence number](../resources/glossary.md#sequence-number)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:serialized block>>~[serialized block](../resources/glossary.md#serialized-block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:serialized transaction>>~[serialized transaction](../resources/glossary.md#serialized-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:sighash-flag>>~[sighash-flag](../resources/glossary.md#sighash-flag)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:SIGHASH_ALL>>~[SIGHASH_ALL](../resources/glossary.md#sighash_all)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:SIGHASH_ANYONECANPAY>>~[SIGHASH_ANYONECANPAY](../resources/glossary.md#sighash_anyonecanpay)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:SIGHASH_NONE>>~[SIGHASH_NONE](../resources/glossary.md#sighash_none)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:SIGHASH_SINGLE>>~[SIGHASH_SINGLE](../resources/glossary.md#sighash_single)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:signature hash>>~[signature hash](../resources/glossary.md#signature-hash)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:signature script>>~[signature script](../resources/glossary.md#signature-script)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Simplified Payment Verification>>~[Simplified Payment Verification](../resources/glossary.md#simplified-payment-verification)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:soft fork>>~[soft fork](../resources/glossary.md#soft-fork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:special transactions>>~[special transactions](../resources/glossary.md#special-transactions)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:spork>>~[spork](../resources/glossary.md#spork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:stale block>>~[stale block](../resources/glossary.md#stale-block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:standard block relay>>~[standard block relay](../resources/glossary.md#standard-block-relay)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:standard transaction>>~[standard transaction](../resources/glossary.md#standard-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Start String>>~[Start String](../resources/glossary.md#start-string)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:superblock>>~[superblock](../resources/glossary.md#superblock)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:target>>~[target](../resources/glossary.md#target)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:target threshold>>~[target threshold](../resources/glossary.md#target-threshold)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:testnet>>~[testnet](../resources/glossary.md#testnet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:transaction>>~[transaction](../resources/glossary.md#transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:transaction fee>>~[transaction fee](../resources/glossary.md#transaction-fee)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:transaction identifiers>>~[transaction identifiers](../resources/glossary.md#transaction-identifiers)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:transaction version number>>~[transaction version number](../resources/glossary.md#transaction-version-number)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:unconfirmed transaction>>~[unconfirmed transaction](../resources/glossary.md#unconfirmed-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:unencrypted wallet>>~[unencrypted wallet](../resources/glossary.md#unencrypted-wallet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:unique addresses>>~[unique addresses](../resources/glossary.md#unique-addresses)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:unlocked wallet>>~[unlocked wallet](../resources/glossary.md#unlocked-wallet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:unsolicited block push>>~[unsolicited block push](../resources/glossary.md#unsolicited-block-push)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:unspent transaction output>>~[unspent transaction output](../resources/glossary.md#unspent-transaction-output)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:User Activated Soft Fork>>~[User Activated Soft Fork](../resources/glossary.md#user-activated-soft-fork)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:wallet>>~[wallet](../resources/glossary.md#wallet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Wallet Import Format>>~[Wallet Import Format](../resources/glossary.md#wallet-import-format)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:wallet support>>~[wallet support](../resources/glossary.md#wallet-support)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:watch-only address>>~[watch-only address](../resources/glossary.md#watch-only-address)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:X11>>~[X11](../resources/glossary.md#x11)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:prefilledtransaction>>~[prefilledtransaction](../resources/glossary.md#prefilledtransaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:proper money handling>>~[proper money handling](../resources/glossary.md#proper money handling)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:v2 block>>~[v2 block](../resources/glossary.md#v2 block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:child public key>>~[child public key](../resources/glossary.md#child public key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:child private key>>~[child private key](../resources/glossary.md#child private key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:parent public key>>~[parent public key](../resources/glossary.md#parent public key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:parent private key>>~[parent private key](../resources/glossary.md#parent private key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:extended public key>>~[extended public key](../resources/glossary.md#extended public key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_TX>>~[MSG_TX](../resources/glossary.md#MSG_TX)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_BLOCK>>~[MSG_BLOCK](../resources/glossary.md#MSG_BLOCK)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_FILTERED_BLOCK>>~[MSG_FILTERED_BLOCK](../resources/glossary.md#MSG_FILTERED_BLOCK)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_CLSIG>>~[MSG_CLSIG](../resources/glossary.md#MSG_CLSIG)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_LEGACY_TXLOCK_REQUEST>>~[MSG_LEGACY_TXLOCK_REQUEST](../resources/glossary.md#MSG_LEGACY_TXLOCK_REQUEST)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_ISLOCK>>~[MSG_ISLOCK](../resources/glossary.md#MSG_ISLOCK)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_SPORK>>~[MSG_SPORK](../resources/glossary.md#MSG_SPORK)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_DSTX>>~[MSG_DSTX](../resources/glossary.md#MSG_DSTX)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_GOVERNANCE_OBJECT>>~[MSG_GOVERNANCE_OBJECT](../resources/glossary.md#MSG_GOVERNANCE_OBJECT)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_GOVERNANCE_OBJECT_VOTE>>~[MSG_GOVERNANCE_OBJECT_VOTE](../resources/glossary.md#MSG_GOVERNANCE_OBJECT_VOTE)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_CMPCT_BLOCK>>~[MSG_CMPCT_BLOCK](../resources/glossary.md#MSG_CMPCT_BLOCK)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_FINAL_COMMITMENT>>~[MSG_QUORUM_FINAL_COMMITMENT](../resources/glossary.md#MSG_QUORUM_FINAL_COMMITMENT)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_CONTRIB>>~[MSG_QUORUM_CONTRIB](../resources/glossary.md#MSG_QUORUM_CONTRIB)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_COMPLAINT>>~[MSG_QUORUM_COMPLAINT](../resources/glossary.md#MSG_QUORUM_COMPLAINT)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_JUSTIFICATION>>~[MSG_QUORUM_JUSTIFICATION](../resources/glossary.md#MSG_QUORUM_JUSTIFICATION)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_PREMATURE_COMMITMENT>>~[MSG_QUORUM_PREMATURE_COMMITMENT](../resources/glossary.md#MSG_QUORUM_PREMATURE_COMMITMENT)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_RECOVERED_SIG>>~[MSG_QUORUM_RECOVERED_SIG](../resources/glossary.md#MSG_QUORUM_RECOVERED_SIG)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_TXLOCK_VOTE>>~[MSG_TXLOCK_VOTE](../resources/glossary.md#MSG_TXLOCK_VOTE)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_MASTERNODE_PAYMENT_VOTE>>~[MSG_MASTERNODE_PAYMENT_VOTE](../resources/glossary.md#MSG_MASTERNODE_PAYMENT_VOTE)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_MASTERNODE_PAYMENT_BLOCK>>~[MSG_MASTERNODE_PAYMENT_BLOCK](../resources/glossary.md#MSG_MASTERNODE_PAYMENT_BLOCK)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_BUDGET_VOTE>>~[MSG_BUDGET_VOTE](../resources/glossary.md#MSG_BUDGET_VOTE)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_MASTERNODE_QUORUM>>~[MSG_MASTERNODE_QUORUM](../resources/glossary.md#MSG_MASTERNODE_QUORUM)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_MASTERNODE_ANNOUNCE>>~[MSG_MASTERNODE_ANNOUNCE](../resources/glossary.md#MSG_MASTERNODE_ANNOUNCE)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_MASTERNODE_PING>>~[MSG_MASTERNODE_PING](../resources/glossary.md#MSG_MASTERNODE_PING)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_MASTERNODE_VERIFY>>~[MSG_MASTERNODE_VERIFY](../resources/glossary.md#MSG_MASTERNODE_VERIFY)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_QUORUM_DEBUG_STATUS>>~[MSG_QUORUM_DEBUG_STATUS](../resources/glossary.md#MSG_QUORUM_DEBUG_STATUS)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_TXLOCK_REQUEST>>~[MSG_TXLOCK_REQUEST](../resources/glossary.md#MSG_TXLOCK_REQUEST)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_CHECKMULTISIG>>~[OP_CHECKMULTISIG](../resources/glossary.md#OP_CHECKMULTISIG)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_CHECKSIG>>~[OP_CHECKSIG](../resources/glossary.md#OP_CHECKSIG)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_DUP>>~[OP_DUP](../resources/glossary.md#OP_DUP)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_EQUAL>>~[OP_EQUAL](../resources/glossary.md#OP_EQUAL)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_EQUALVERIFY>>~[OP_EQUALVERIFY](../resources/glossary.md#OP_EQUALVERIFY)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_HASH160>>~[OP_HASH160](../resources/glossary.md#OP_HASH160)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_RETURN>>~[OP_RETURN](../resources/glossary.md#OP_RETURN)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:OP_VERIFY>>~[OP_VERIFY](../resources/glossary.md#OP_VERIFY)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:TXID>>~[TXID](../resources/glossary.md#TXID)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:MSG_ISDLOCK>>~[MSG_ISDLOCK](../resources/glossary.md#MSG_ISDLOCK)~g' {} +