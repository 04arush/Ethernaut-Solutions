## Objective:-
1. Unlock the contract

## Finding:-
Unlocking the contract requires us to set the `locked` state variable to false which can be achieved by calling the `unlock()` function and pass the required condition. To pass the condition we need access to the bytes32 array `data` which is defined private state variable. However, as we already know, anything that is stored on blockchain is never actually a secret. So we can access the exact slot from storage where `data` is stored.
<br>So which slot is the `data` stored in?
```solidity
// as each slot in storage can hold upto 32 bytes
// Slot 0 
bool public locked = true;
// Slot 1 - as uint256 takes 32 bytes, it accuires the whole slot
uint256 public ID = block.timestamp;
// Slot 2 - uint8 only takes 1 byte from the slot
uint8 private flattening = 10;
// Slot 2
uint8 private denomination = 255;
// Slot 2
uint16 private awkwardness = uint16(block.timestamp);
// Slot 3, Slot 4, & Slot 5 - as each value needs 32 bytes, each will take one slot from the storage
bytes32[3] private data;
```

## Solution:-
- Step 1: Go to the Ethernaut's console on Privacy challenge
- Step 2: assign the Ethernaut's instance address to `addr` variable in the console
```javascript
addr = "0x6FE..."
```
- Step 3: Get the required value of the data from storage
```javascript
await web3.eth.getStorageAt(addr, 5)    // we need 5th slot because require command checks for data[2]
```
- Step 4: Store the fetched bytes32 data into a variable called `data` from the console
- Step 5: To shorten the data from bytes32 to bytes16, run the following command in the console
```javascript
data.slice(0, 34)   // as the first two characters are 0x and every 2 characters are 1 byte
```
- Step 6: Load the contract using the instance address and then call the `unlock()` function with the sliced bytes16 data value
<br>The contract will not be unlocked!