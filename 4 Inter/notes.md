## Notes for lil intermediate syntax and features:

(Vid 43 to 57)

- Vid 43: Call

  - used to call other contract functions
  - have to pass function and arguments abi.encodeWithSignature to call
  - can also specify the amount of eth needed and gas limits

- Vid 44: Delegate Call
  - tricky stuff
  - we can update the contract by updating original contract which is used in the delegate call
  - order and the name of variables should be the same in both contracts
    - reason is storage pointer at which the variables are located
  - re-visit this shit
