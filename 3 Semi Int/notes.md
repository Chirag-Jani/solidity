## Notes for lil semi-intermediate syntax and features:

(Vid 31 to 42)

- Vid 31: Inheritance

  - functions to be inherited must be marked virtual
  - use keyword 'override' while inheriting

- Vid 32: Multiple inheritance

  - while inhering multiple contracts, the order is important in which the contracts are inherited
  - little bit of tricky syntax, will get used to it

- Vid 33: Calling parent constructor

  - there are 2 ways
    - when you already know the values
    - deciding while deploying
  - order is determined not in the way we call the constructors but in the way of inheritance

- Vid 34: Calling parent functions

  - directly
  - using the word super
  - directly calling will call only one function
  - super keyword will call all the parents

- Vid 35: Visibility

  - public
  - private
  - internal
  - external

- Vid 36: Immutable

  - initialized while contract is deployed
  - only set once
  - more gas efficient than state variables
  - like constants but we can set it only once

- Vid 37: Payable

  - functions can receive ethers if marked payable
  - address can pay ether if marked payable

- Vid 38: Fallback
  - used when function doesn't exist
  - to directly send ethers
