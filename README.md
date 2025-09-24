# Mango Smart Contract 🍋

A simple deposit & withdraw contract deployed on **Base** network.

## Contract

- Allows anyone to deposit ETH
- Only the owner (deployer) can withdraw all funds
- Emits events on deposit and withdrawal

## Deployment

### Via Remix

1. Open [Remix](https://remix.ethereum.org/).
2. Create a new file `Mango.sol` and paste the contract code.
3. Compile using Solidity `0.8.19`.
4. Go to **Deploy & Run Transactions**.
5. Select `Injected Provider - MetaMask` and connect MetaMask.
6. Switch network in MetaMask:
   - **Base Sepolia** for testnet deployment.
   - **Base Mainnet** for production deployment.
7. Click **Deploy** and confirm transaction.
8. Copy the deployed contract address and verify on [BaseScan](https://basescan.org/).

## Example

```solidity
Mango contract deployed to: 0xYourContractAddressHere
