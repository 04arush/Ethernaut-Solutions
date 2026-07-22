## Objective:-
1. Hack the basic token contract

## Finding:-
The challenge is given in Solidity version ^0.6.0. As we know, SafeMath was not enabled in this solidity version. Hence, if we successfully underflow a uint, it will wrap and become max uint.

In the `transfer()` function, we can bypass the requirement by underflowing it.

## Solution:-
- Step 1: Create a new solidity file and define an interface called "IToken", then define `balanceOf()` and `transfer()` functions in the interface.
- Step 2: Create a "Hack" contract with a constructor which takes the Ethernaut's instance address, and calls the `transfer()` function using interface "IToken" by passing `msg.sender` and `1` as parameters. As the contract has no tokens, it will underflow and wrap into max uint.
- Step 3: Deploy the "Hack" contract with the instance address
<br>You will now have a balance of 21 tokens!