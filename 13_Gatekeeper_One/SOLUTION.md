## Objective:-
1. Make it past the gatekeeper
2. Register as an entrant

## Finding:-
The `entrant` state variable is updated using the `enter()` function which has 3 modifiers `gateOne`, `gateTwo`, and `gateThree`, in which:
- `gateOne` checks that `msg.sender` is not also the `tx.origin`, for which we can call the function from another deployed contract
- `gateTwo` checks if the gas that is left when the modifier is executed should be divisible by 8191
- `gasThree` checks three things. First, the conversion of key in `uint32` and `uint16` should be equal. Second, the converted key into `uint32` should not be equal to the key. Third, converted `uint32` key should be equal to `tx.origin` converted into `uint160`, further converted into `uint16`

## Solution:-
1. Create a contract `Hack`
2. Define an external function named `enter()` and pass in the address of target contract and gas
3. Define a state variable `key16`, set to `uint16(uint160(tx.origin))`. This will help bypass the third and first require statements
4. Then, define another variable `key64`, set to `uint64(1 << 63) + uint64(key16)`. This will make `uint32` differ from `uint16` as `uint32` will have 1 at the very left of itself while other don't
5. Using require statement, check if the gas is smaller than 8191 or not
6. Check for target contract's output, if it's true or not, using require statement by passing the `key64` as key, and specific gas set using `{gas: 8191 * 10 + _gas}`
7. Deploy the `Hack` contract and call the function `enter()` with Ethernaut's instance address and a gas value