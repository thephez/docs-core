#!/bin/bash

# Replace readme.io's proprietary <<glossary:term>> syntax with markdown links to the terms on the
# glossary page (glossary.md)
find . -iname "*.md" -exec sed -i 's~<<glossary:address>>~[address](../resources/glossary.md#address)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:addresses>>~[addresses](../resources/glossary.md#address)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:base58>>~[base58](../resources/glossary.md#base58)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:base58check>>~[base58check](../resources/glossary.md#base58check)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Base58Check>>~[Base58Check](../resources/glossary.md#base58check)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:BIP32>>~[BIP32](../resources/glossary.md#bip32)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:BIP70 payment protocol>>~[BIP70 payment protocol](../resources/glossary.md#bip70-payment-protocol)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block>>~[block](../resources/glossary.md#block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocks>>~[blocks](../resources/glossary.md#block)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocks-first>>~[blocks-first](../resources/glossary.md#blocks-first-sync)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block chain>>~[block chain](../resources/glossary.md#block-chain)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block header>>~[block header](../resources/glossary.md#block-header)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Block headers>>~[Block headers](../resources/glossary.md#block-header)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block height>>~[block height](../resources/glossary.md#block-height)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block reward>>~[block reward](../resources/glossary.md#block-reward)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:bloom filter>>~[bloom filter](../resources/glossary.md#bloom-filter)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:masternode>>~[masternode](../resources/glossary.md#masternode)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:wallet>>~[wallet](../resources/glossary.md#wallet)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:block-size-limit>>~[block-size-limit](../resources/glossary.md#block-size-limit)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocks-first-sync>>~[blocks-first-sync](../resources/glossary.md#blocks-first-sync)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocktransactions>>~[blocktransactions](../resources/glossary.md#blocktransactions)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:blocktransactionsrequest >>~[blocktransactionsrequest ](../resources/glossary.md#blocktransactionsrequest s)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:Bloom-filter>>~[bloom-filter](../resources/glossary.md#bloom-filter)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:chain-code>>~[chain-code](../resources/glossary.md#chain-code)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:ChainLock>>~[ChainLock](../resources/glossary.md#ChainLock)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:change-output>>~[change-output](../resources/glossary.md#change-output)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:child-key>>~[child-key](../resources/glossary.md#child-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:child-pays-for-parent>>~[child-pays-for-parent](../resources/glossary.md#child-pays-for-parent)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinbase>>~[coinbase](../resources/glossary.md#coinbase)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinbase-block-height>>~[coinbase-block-height](../resources/glossary.md#coinbase-block-height)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinbase-transaction>>~[coinbase-transaction](../resources/glossary.md#coinbase-transaction)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:coinjoin>>~[coinjoin](../resources/glossary.md#coinjoin)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:compactsize>>~[compactsize](../resources/glossary.md#compactsize)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:compressed-public-key>>~[compactsize](../resources/glossary.md#compressed-public-key)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:confirmations>>~[confirmations](../resources/glossary.md#confirmations)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:consensus>>~[consensus](../resources/glossary.md#consensus)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:consensus-rules>>~[consensus-rules](../resources/glossary.md#consensus-rules)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:dark-gravity-wave>>~[dark-gravity-wave](../resources/glossary.md#dark-gravity-wave)~g' {} +
find . -iname "*.md" -exec sed -i 's~<<glossary:dash-address-encoding>>~[dash-address-encoding](../resources/glossary.md#dash-address-encoding)~g' {} +

find . -iname "*.md" -exec sed -i 's~<<glossary:51-percent-attack>>~[51-percent-attack](../resources/glossary.md#51-percent-attack)~g' {} +

