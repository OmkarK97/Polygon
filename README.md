# ERC721 NFT Bridge from Ethereum to Polygon using fxPortal

This project aims to bridge ERC721 non-fungible tokens (NFTs) from the Ethereum network to Polygon (formerly Matic) network using fxPortal.

## Smart Contract Compilation

To compile the smart contract, run the following command using Hardhat:

```shell
npx hardhat compile
```

## Deployment on Goerli Test Network

To deploy the smart contract on the Goerli test network, use the following command:

```shell
npx hardhat run scripts/deploy.js --network goerli
```

## Foundry Commands

Here are the explanations of the following Foundry commands:

### Command 1

```shell
cast call $MAPPED_TOKEN "symbol()" --rpc-url $MUMBAI_URL
```

This command retrieves the symbol of the mapped token on the Mumbai test network.

### Command 2

```shell
export M_ADDRS=$(cast wallet new | grep -o "Address:.*" | sed 's/Address: //')
```

This command creates a new wallet address and assigns it to the `M_ADDRS` environment variable.

### Command 3

```shell
cast send $GTOKEN_ADDRS "approve(address, uint256)" $FX_ADDRS 1000 --rpc-url $GOERLI_URL --private-key $PRIVATE_KEY
```

This command approves the transfer of 1000 tokens from the `GTOKEN_ADDRS` address to the `FX_ADDRS` address on the Goerli network.

### Command 4

```shell
cast send $FX_ADDRS "deposit(address, address, uint256, bytes)" $GTOKEN_ADDRS $M_ADDRS 1000 0x00 --rpc-url $GOERLI_URL --private-key $PRIVATE_KEY
```

This command initiates a deposit of 1000 tokens from the `GTOKEN_ADDRS` address to the `M_ADDRS` address on the Goerli network using fxPortal.

### Command 5

```shell
cast send $FX_ADDRS "deposit(address, address, uint256, bytes)" $GTOKEN_ADDRS $M_ADDRS 1000 0x00 --rpc-url $GOERLI_URL --private-key $PRIVATE_KEY
```

This command is similar to Command 4 and performs another deposit of 1000 tokens from the `GTOKEN_ADDRS` address to the `M_ADDRS` address on the Goerli network using fxPortal.

Please note that the variables such as `$MAPPED_TOKEN`, `$MUMBAI_URL`, `$GTOKEN_ADDRS`, `$FX_ADDRS`, `$GOERLI_URL`, and `$PRIVATE_KEY` should be replaced with the appropriate values before executing these commands.
