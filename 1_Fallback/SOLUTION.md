## Objective:-
1. Claim the ownership of the contract
2. Reduce it's balance to 0

## Solution:-
- Step 1: Call contribute() function with minimum 1 WEI as value.
- Step 2: Initiate Low-Level Interaction which is receive() function with 1 WEI as value.
You are now the owner of the Contract!
- Step 3: call withdraw() function to drain the contract.