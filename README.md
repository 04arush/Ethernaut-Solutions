# Ethernaut CTF Solutions

[Ethernaut](https://ethernaut.openzeppelin.com/) is a Web3/Solidity-based wargame by OpenZeppelin where each level is a smart contract that needs to be hacked. This repository contains my solutions and write-ups for each challenge.

---

## Structure

Each challenge lives in its own folder:

```
<level>_<ChallengeName>/
├── <ChallengeName>.sol   # The vulnerable contract (+ Hack contract if needed inline)
├── Hack.sol              # Separate attacker contract (only when required)
└── SOLUTION.md           # Objective, vulnerability found, and step-by-step solution
```

---

## Challenges

| # | Challenge | Vulnerability | Completed |
|---|-----------|---------------|:---------:|
| 1 | Fallback | Improper ownership transfer via `receive()` | 22 Jul |
| 2 | Fallout | Typo in constructor name (Solidity ^0.6) | 22 Jul |
| 3 | CoinFlip | Predictable on-chain randomness | 22 Jul |
| 4 | Telephone | `tx.origin` vs `msg.sender` confusion | 22 Jul |
| 5 | Token | Integer underflow (Solidity ^0.6, no SafeMath) | 22 Jul |
| 6 | Delegation | Unsafe `delegatecall` in fallback | 22 Jul |
| 7 | Force | Forced ETH transfer via `selfdestruct` | 22 Jul |
| 8 | Vault | Private storage is publicly readable on-chain | 22 Jul |
| 9 | King | DoS by blocking ETH transfer | 22 Jul |
| 10 | Re-entrancy | Classic re-entrancy attack | 22 Jul |
| 11 | Elevator | Untrusted external interface implementation | 23 Jul |
| 12 | Privacy | — | — |
| 13 | Gatekeeper One | — | — |
| 14 | Gatekeeper Two | — | — |
| 15 | Naught Coin | — | — |
| 16 | Preservation | — | — |
| 17 | Recovery | — | — |
| 18 | MagicNumber | — | — |
| 19 | Alien Codex | — | — |
| 20 | Denial | — | — |
| 21 | Shop | — | — |
| 22 | Dex | — | — |
| 23 | Dex Two | — | — |
| 24 | Puzzle Wallet | — | — |
| 25 | Motorbike | — | — |
| 26 | DoubleEntryPoint | — | — |
| 27 | Good Samaritan | — | — |
| 28 | Gatekeeper Three | — | — |
| 29 | Switch | — | — |
| 30 | HigherOrder | — | — |
| 31 | Stake | — | — |
| 32 | Impersonator | — | — |
| 33 | Magic Animal Carousel | — | — |
| 34 | Bet House | — | — |
| 35 | Elliptic Token | — | — |
| 36 | Cashback | — | — |
| 37 | Impersonator Two | — | — |
| 38 | UniqueNFT | — | — |
| 39 | Forger | — | — |
| 40 | NotOptimisticPortal | — | — |

---

## Key Concepts Covered

| Concept | Challenges |
|---------|-----------|
| Ownership manipulation | 1, 2, 4, 6 |
| On-chain randomness | 3 |
| Integer overflow/underflow | 5 |
| `delegatecall` storage collision | 6 |
| `selfdestruct` forced ETH | 7 |
| Blockchain storage is public | 8 |
| DoS via revert | 9 |
| Re-entrancy | 10 |
| Untrusted external calls | 11 |

---

## Tools Used

- [Remix IDE](https://remix.ethereum.org/) — writing and deploying contracts
- [Ethernaut Console](https://ethernaut.openzeppelin.com/) — interacting with instances via `web3.js`
- [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)
