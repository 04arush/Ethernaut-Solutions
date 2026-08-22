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
| 12 | Privacy | Private storage is publicly readable on-chain | 24 Jul |
| 13 | Gatekeeper One | `tx.origin` vs `msg.sender`, gas manipulation, type casting | 19 Aug |
| 14 | Gatekeeper Two | Contract code size during construction, XOR key derivation | 20 Aug |
| 15 | Naught Coin | ERC20 `transferFrom` bypasses `lockTokens` modifier | 21 Aug |
| 16 | Preservation | `delegatecall` storage collision to hijack ownership | 21 Aug |

---

## Key Concepts Covered

| Concept | Challenges |
|---------|-----------|
| Ownership manipulation | 1, 2, 4, 6 |
| On-chain randomness | 3 |
| Integer overflow/underflow | 5 |
| `delegatecall` storage collision | 6, 16 |
| `selfdestruct` forced ETH | 7 |
| Blockchain storage is public | 8, 12 |
| DoS via revert | 9 |
| Re-entrancy | 10 |
| Untrusted external calls | 11 |
| Gas manipulation | 13 |
| Type casting / bit masking | 13, 14 |
| Contract construction exploit | 14 |

---

## Tools Used

- [Remix IDE](https://remix.ethereum.org/) — writing and deploying contracts
- [Ethernaut Console](https://ethernaut.openzeppelin.com/) — interacting with instances via `web3.js`
- [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)
