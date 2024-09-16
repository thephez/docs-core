```{eval-rst}
.. meta::
  :title: Removed RPCs
  :description: A list of RPCs that have recently been removed from Dash Core.
```

# Removed RPCs

The following RPCs were recently removed. See the [previous version of documentation](https://docs.dash.org/projects/core/en/20.0.0/docs/api/remote-procedure-calls-removed.html) for RPCs removed longer ago.

## GetPoolInfo

The `getpoolinfo` RPC returns an object containing CoinJoin pool related information.

_Parameters: none_

_Result---information about the CoinJoin pool_

Name | Type | Presence | Description
--- | --- | --- | ---
`result` | object | Required<br>(exactly 1) | Information about the pool
→<br>`state` | string | Required<br>(exactly 1) | Pool state.  Will be one of the following:<br>• `IDLE` <br>• `QUEUE` <br>• `ACCEPTING_ENTRIES` <br>• `SIGNING` <br>• `ERROR` <br>• `SUCCESS` <br>• `UNKNOWN` <br>
→<br>`mixing_mode` | string | Required<br>(exactly 1) | One of the following:<br>• `normal` <br>• `multi-session` <br>
→<br>`queue` | number (int) | Required<br>(exactly 1) | Queue size
→<br>`entries` | number (int) | Required<br>(exactly 1) | The number of entries
→<br>`status` | string | Required<br>(exactly 1) | A more detailed description of the current state
→<br>`outpoint` | string (hex) | Optional<br>(exactly 1) | Previous output
→<br>`addr` | string | Optional<br>(exactly 1) | Address
→<br>`keys_left` | number (int) | Optional<br>(exactly 1) | The number of keys left in the local wallet
→<br>`warnings` | number (int) | Optional<br>(exactly 1) | Warnings related to local wallet

_Example from Dash Core 0.12.2_

``` bash
dash-cli -testnet getpoolinfo
```

Result:

``` json
{
  "state": "IDLE",
  "mixing_mode": "normal",
  "queue": 0,
  "entries": 0,
  "status": "PrivateSend is idle.",
  "keys_left": 617,
  "warnings": ""
}
```

``` json
{
  "state": "QUEUE",
  "mixing_mode": "normal",
  "queue": 1,
  "entries": 0,
  "status": "Submitted to masternode, waiting in queue .",
  "outpoint": "e3a6b7878a7e9413898bb379b323c521676f9d460db17ec3bf42d9ac0c9a432f-1",
  "addr": "217.182.229.146:19999",
  "keys_left": 571,
  "warnings": ""
}
```

``` json
{
  "state": "ERROR",
  "mixing_mode": "normal",
  "queue": 0,
  "entries": 0,
  "status": "PrivateSend request incomplete: Session timed out. Will retry...",
  "keys_left": 571,
  "warnings": ""
}
```

_See also:_

## GObject Vote-conf

:::{attention}
Removed in Dash Core 20.0.0
:::

The `gobject vote-conf` RPC votes on a governance object by masternode configured in dash.conf.

*Parameter #1---governance hash*

| Name              | Type         | Presence                | Description                   |
| ----------------- | ------------ | ----------------------- | ----------------------------- |
| `governance-hash` | string (hex) | Required<br>(exactly 1) | Hash of the governance object |

*Parameter #2---vote signal*

| Name     | Type   | Presence                | Description                                  |
| -------- | ------ | ----------------------- | -------------------------------------------- |
| `signal` | string | Required<br>(exactly 1) | Vote signal: `funding`, `valid`, or `delete` |

*Parameter #3---vote outcome*

| Name      | Type   | Presence                | Description                             |
| --------- | ------ | ----------------------- | --------------------------------------- |
| `outcome` | string | Required<br>(exactly 1) | Vote outcome: `yes`, `no`, or `abstain` |

*Result---votes for specified governance*

| Name               | Type   | Presence                | Description                               |
| ------------------ | ------ | ----------------------- | ----------------------------------------- |
| Result             | object | Required<br>(exactly 1) | The governance object votes               |
| →<br>`overall`     | string | Required<br>(1 or more) | Reports number of vote successes/failures |
| →<br>`detail`      | object | Required<br>(exactly 1) | Vote details                              |
| → →<br>`dash.conf` | object | Required<br>(1 or more) |                                           |
| → → →<br>`result`  | string | Required<br>(exactly 1) | Vote result                               |

*Example from Dash Core 0.12.2*

``` bash
dash-cli -testnet gobject vote-conf \
0bf97bce78b3b642c36d4ca8e9265f8f66de8774c220221f57739c1956413e2b funding yes
```

``` json
{
  "overall": "Voted successfully 1 time(s) and failed 0 time(s).",
  "detail": {
    "dash.conf": {
      "result": "success"
    }
  }
}
```
