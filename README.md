# MessageBoard dApp

BSFT 5A - Assignment 2 (Fall 2026)
M.Umer 24i5689

A mini dApp made of a Solidity smart contract and a single-page HTML/CSS/JavaScript frontend that talks to it through MetaMask on the **Sepolia** testnet (using ethers.js v6).

## Contract

- **Network:** Sepolia testnet
- **Contract address:** `0x16a7540682BC68a6100bc42409F54255D374c04D`
- **Etherscan:** https://sepolia.etherscan.io/address/0xYOUR_CONTRACT_ADDRESS

| Function | Type | What it does |
|---|---|---|
| `setMessage(string)` | write | Stores a new message (1-140 chars), records the sender, emits an event |
| `getMessage()` | read | Returns the current message |
| `getUpdateCount()` | read | Returns how many times the message was changed |
| `getLastUpdater()` | read | Returns the address that last changed the message |

## Setup

1. Install the MetaMask browser extension and switch it to **Sepolia**.
2. Get free test ETH from a Sepolia faucet.
3. Open https://remix.ethereum.org, create `SmartContract.sol`, paste the code, compile with Solidity 0.8.20+.
4. In *Deploy & Run*, choose **Injected Provider - MetaMask**, deploy, and confirm in MetaMask.
5. Copy the deployed contract address and paste it into `CONTRACT_ADDRESS` in `index.html`.
6. Serve the page locally (MetaMask does not inject into `file://` pages in some browsers):
   ```
   python -m http.server 8000
   ```
   then open http://localhost:8000
7. Click **Connect MetaMask**, read the data, then send a transaction.

## Screenshots

1. `screenshots/1-deployment.png` - contract deployed in Remix
2. `screenshots/2-connected.png` - page connected to MetaMask
3. `screenshots/3-transaction.png` - transaction confirmed on the page

## Files

- `SmartContract.sol` - Solidity contract
- `index.html` - frontend with inline script
- `style.css` - styling
