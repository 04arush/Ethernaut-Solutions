## Objective:-
1. Reach the top of the building

## Finding:-
To set the state variable `top` to true, the `.isLastFloor()` from "Building" interface, which is loaded at caller's address, must return true. However, to set the state variable to true, we must pass the if condition. Hence, we will first need `.isLastFloor()` to return false and then true when called again.

## Solution:-
- Step 1: Create a contract "Hack" and load the "Elevator" contract as immutable private state variable
- Step 2: Create a constructor which takes the target address
- Step 3: Define `pwn()` which calls `goTo()` function from target with any floor value
- Step 4: Define `isLastFloor()` function which increment a state variable that stores the amount of times that function has run. By returning `callCount > 1`, we can make sure that the funtion returns false when called for first time but true when called next time.
- Step 5: Call the `pwn()` function
<br>Congratulations! You're now on the top floor.