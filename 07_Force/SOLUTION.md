## Objective:-
1. Make the balance of the contract greater than 0

## Finding:-
The given contract is empty, but we can create another contract and use `selfdestruct` in it, which will send all the remaining ether to the remaining contract, that will be the given "Force" contract.

## Solution:-
- Step 1: Create another contract called "Hack" with a payable constructor that takes the payable address of the target contract
- Step 2: Use `selfdestruct` in the constructor to send all the remaining ether of "Hack" contract to "Force" contract
- Step 3: Deploy "Hack" contract with the Ethernaut's instance address by sending 1 WEI
<br>The Hack contract will be destructed and Force contract will receive that 1 WEI. 