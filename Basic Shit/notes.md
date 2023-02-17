## Notes for basic syntax and features:

- Can decalre functions and custom errors outside the contract to import in other contracts.

- the functions outside the contract can not read the state of the contrat.

- will not wrap the maximum and minimum values of uint from now on due to SafeMath

- vid 1 => 6.28

- Vid 2 to 4:

  - hello world contract
  - value types (uint, int, bool, etc)
  - functions example

- Vid 5 to 7: Types of variables

  - state : stored on the chain outside the function
  - local : stored while the function is getting executed
  - global:
    1. msg.sender
    2. block.timestamp
    3. block.number

- Vid 8: View and Pure functions

  - pure: doesn't read/modify any data on the chain
  - view: doesn't modify any data on the chain but do read from state variables

- Vid 9: Counter (increment and decrement)

- Vid 10: Default values

  - boolean = false
  - uint = 0
  - int = 0
  - address = zero addresss (32 zeroes)
  - bytes32 = 64 zeroes

- Vid 10: Constants

  - when state variable is not going to change, use constant because its going to save gas for us

- Vid 12: if-else and ternery operators
