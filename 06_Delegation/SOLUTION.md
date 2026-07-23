## Objective:-
1. Claim ownership of the instance 

## Finding:-
When we call the `fallback()` function in "Delegation" contract, it will do a `.delegatecall()` which will execute the code inside "Delegate" contract which will update the state variables inside the "Delegation" contract.

## Solution:-
- Step 1: Add the contract using instance address on Delegate contract
- Step 2: Call the `pwn()` function
<br>The function will change the owner address to your address in the Delegation contract, granting you the ownership.