## Objective:-
1. Unlock the vault

## Finding:-
In the "Vault" contract, we need `password` to unlock the vault by setting `locked` to false. The `password` state variable is set to private which cannot be directly accessed, but as it is also stored on the blockchain, it is never truly "private" and can be accessed using the Ethernaut's website console. 

## Solution:-
- Step 1: Go to the Ethernaut's Vault challenge page and open the console
- Step 2: Run the following command which will return the password stored in the state variable 
```javascript
await web3.eth.getStorageAt(contract.address, 1)    // 1 is the slot in the storage that we need as slot 0 is the `locked` variable and slot 2 is `password` variable
```
- Step 3: Load the "Vault" contract with the Ethernaut's instance address
- Step 4: Call the `unlock()` function with the password we got from console
<br>The vault will be unlocked now!