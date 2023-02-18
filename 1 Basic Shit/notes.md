## Notes for basic syntax and features:

(Vid 1 to 18)

- Vid 1

  - Can decalre functions and custom errors outside the contract to import in other contracts.
  - the functions outside the contract can not read the state of the contrat.
  - will not wrap the maximum and minimum values of uint from now on due to SafeMath
  - 6.28 (remaining)

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

  - pure: doesn't read/modify any data on/from the chain
  - view: doesn't modify any data on the chain but do read from state variables or the chain

- Vid 9: Counter (increment and decrement)

- Vid 10: Default values

  - boolean = false
  - uint = 0
  - int = 0
  - address = zero addresss (32 zeroes)
  - bytes32 = 64 zeroes

- Vid 11: Constants

  - uses less gas to read the constant variables
  - can not be modified
  - when state variable is not going to change, use constant because its going to save gas for us

- Vid 12: if-else and ternery operators

  - write return keyword before the check while using ternery thing (different from JS shit)

- Vid 13: for and while loops

  - keep loops small coz the more the loops, the more the gas usage

- Vid 14: Error (require, assert, and revert)

  - use custom errors to save gases
  - require (for validation and access control)
  - use revert when you have to check multiple conditions
  - assert is used when the condition is expected to be true all the time and to find bugs in the contract where we accidently update the state variable which we didn't want to be updated

- Vid 15: Function Modifiers

  - allows us to reuse code
  - three types of modifiers
    - basic
    - with input
    - sandwich

- Vid 16: Constructors

  - called once when the contract is deployed
  - mainly used to initialize state variables

- Vid 17: Ownable

  - practical demo
  - using global & state vars, modifiers, error, and funcs

- Vid 18: Function Outputs (Important)
  - multiple types of output available
  - multiple outputs
  - named outputs
  - destructuring assignments
