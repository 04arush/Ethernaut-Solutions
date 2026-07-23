## Objective:-
1. Guess the correct outcome 10 times in a row

## Finding:-
In the `flip()` function, the state variable `side` is the outcome that we have to guess, which is determined by `blockValue / FACTOR`.

- `FACTOR` is hard encoded into the contract with the value "57896044618658097711785492504343953926634992332820282019728792003956564819968".
- `blockValue` is determined by `blockhash(block.number - 1)`

Both of the values can be copied into a new contract and find the exact outcome, which then calls the `flip()` with the outcome that it found as our guess. It will always be the same as the outcome, hence allowing us to make infinite consecutive wins.

## Solution:-
- Step 1: Create a contract "Hack" and store the address of "CoinFlip" contract as `target` and initialize it with the Ethernaut's contract address using contructor
- Step 2: Define a function `_guess()` and copy the code for `blockValue`, `coinFlip`, and `side` from "CoinFlip" contract, then return `side`
- Step 3: Define `flip()` function which takes the guess using `_guess()` function
- Step 4: Call the `flip()` function 10 times in a row