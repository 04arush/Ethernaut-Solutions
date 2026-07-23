## Objective:-
1. Become the king by sending more ETH than the prize
2. Deny anyone from claiming the kingship

## Finding:-
The "King" contract uses `.transfer()` to send the current prize to the previous king which may end up failing. We can just switch the `.transfer()` function with `.call` and make sure that all the upcoming transaction fail after we become the king.

## Solution:-
- Step 1: Create another contract called "Hack" with a payable constructor which takes target address as a payable parameter
- Step 2: Call the contract using `.call()` and store in a boolean variable as the [King.sol](./King.sol)
- Step 3: Check the prize amount, then deploy "Hack" contract with the instance address and the prize amount to claim the kingship