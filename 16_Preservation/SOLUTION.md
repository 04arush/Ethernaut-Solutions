## Objective:-
1. Claim ownership of the contract 

## Finding:-
The `owner` is set using constructor when the contract deployed to the deployer. There is no function that explicitly changes owner to someone else, but the public functions `setFirstTime()` and `setSecondTime()` use `delegatecall` which can be used to exploit the contract.
- The `timeZone1Library` library is called with `delegatecall` which executes the `setTime()` function from "LibraryContract" contract. When we call the functions, it will call the `setTime()` function over the storage of "Preservation" contract. So, the `timeZone1Library` will now get our address as uint.
- To change the `owner` variable, we can define the `setTime()` function again in the hack contract that the call will refer to, and delegatecall will change the state variable in "Preservation" contract of.

## Solution:-
1. Create a "Hack" contract
2. Copy the state variables from "Preservation" contract
3. Define an external function `atk()` which takes the Preservation contract as `_target` as parameter
4. Call the `setFirstTime()` function from `_target` with the address of Hack contract. Then, call it again but with address of deployer (`msg.sender`)
5. Define another external function `setTime()` which changes the `owner` variable with the passed in `_address`