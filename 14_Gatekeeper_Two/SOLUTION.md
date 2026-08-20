## Objective:-
1. Register as an entrant

## Finding:-
- The `gateOne` modifier is same as the previous challenge "Gatekeeper One".
- However, the modifier `gateTwo` now says that the code size of the caller must be 0, which means that the `msg.sender` cannot be a contract. However, when the contact is deployed, it's code size stays 0. So, by calling the function within constructor, we can bypass the `gateTwo` modifier.
- The `gateThree` takes the XOR of hashed and encoded `msg.sender` against the `_key`, and compare it with the `max`. If we perform XOR with max and hashed address again, we will get the `_key`, because: `hashedAddress ^ _key = max`, as we know `x ^ x ^ y = y`. So, we can state that `hashedAddress ^ hashedAddress ^ _key = _key`. Therefore, `hashedAddress ^ max = _key`.  

## Solution:-
1. Create a `Hack` contract with a constructor
2. Define a state variable `hashedAddress` and store the address of "Hack" contract which is hashed with `keccak256`, then converted into bytes8 and further into uint64
3. Perform a XOR operation on the `hashedAddress` with max of uint64 and convert it into bytes8, then store it into a state variable (`key`)
4. Call the `enter()` function by passing it the `key`