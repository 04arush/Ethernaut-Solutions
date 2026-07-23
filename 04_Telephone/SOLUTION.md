## Objective:-
1. Claim the ownership of the contract

## Finding:-
The owner is changed to the address that is passed in `changeOwner()` once it is called, but the condition `tx.origin != msg.sender` needs to be satisfied.

Let's suppose that Hacker calls the contract "Hack" which calls the contract "Telephone", so:
- `tx.origin` is the origin address which initiated the transaction. In this case, it will be the Hacker's address.
- `msg.sender` is the immidiate address of the one who initiated the particular function or contract. It depends on the transaction.

Hacker -> Contract "Hack" -> Contract "Telephone"
- Transaction 1: Hacker called Contract "Hack". So the `tx.origin` will be the Hacker and `msg.sender` will also be the Hacker
- Transaction 2: Contract "Hack" calls Contract "Telephone". So the `tx.origin` will yet be the Hacker but `msg.sender` will now be the contract "Hack"

This satisfies the condition required and we will be able to claim the ownership of Telephone Contract.

## Solution:- 
- Step 1: Create a contract called "Hack"
- Step 2: Build a constructor which take an address `_target` as it's parameter
- Step 3: Initiate the `changeOwner()` function from `Telephone(_target)` in it with `msg.sender` parameter
- Step 4: Deploy the "Hack" contract with Instance Address from Ethernaut
<br>You will now be the owner of the "Telephone" contract!