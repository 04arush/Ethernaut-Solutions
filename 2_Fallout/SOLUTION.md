## Objective:-
1. Claim the ownership of the contract.

## Finding:-
In the given solidity code, solidity version is given `^0.6.0`.

In Solidity version ^0.8, we define the constructor as:
```solidity
contract MyContract {
    constructor() {}
}
```

However, in Solidity version ^0.6, we define the constructor as a function with the same name as the contract:
```solidity
contract MyContract {
    function MyContract() {}
}
```

When we look closely, the constructor in the given contract is incorrect as it mismatches the name to "Fal1out" instead of name of the contract "Fallout", which means that the function `Fal1out()` is not getting called as the contract deploys and can be called manually which will grant ownership to the caller.

## Solution:-
- Step 1: Create an interface for Fallout contract, as in [Hack.sol](./Hack.sol)
- Step 2: Define the `Fal1out()` function as external and payable in the interface
- Step 3: Load the contract with Ethernaut's instance address
- Step 4: Call the `Fal1out()` function
<br>You will now be the owner of Fallout contract