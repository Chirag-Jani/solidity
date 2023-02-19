## Notes for lil Basic++ syntax and features:

(Vid 19 to 30)

- Vid 19: Arrays

  - static and dynamic
  - static doesn't have push and pop functions
  - arrays in memory are fixed in size
  - don't return array in memory using funcs
    - as it uses more gas

- Vid 20: Remove element by shifting

  - not gas efficient
  - shift all the elements to one position right
  - pop the last elemnt
  - order of the elements is preserved

- Vid 21: Remove elemnt by replacing the last elemnt

  - gas efficient
  - order is not preserved
  - swap with the last element

- Vid 22: Mappings

  - 1D and 2D
  - key-value pairs

- Vid 23: Iterable Mappings

  - keep another mapping and the array
  - by the use of those two, one can iterate through the mapping

- Vid 24: Structs

  - holds multiple datatypes together
  - 3 types of initialization
    - direct with order
    - key-value pairs without order
    - default and later updating
    - to just read: memory
    - to write: storage

- Vid 25: Enums

  - to hold multiple values whatever we want
  - can be combined with any datatype
  - set/update/delete/get

- Vid 26: Deploy any contract

  - skipped
  - gotta come back later

- Vid 27: Storage, Memory, and Calldata

  - Storage: to get and update state variables (changes are preserved after function execution)
  - Memory: to just read the variables (changes are not preserved and deleted after function execution)
  - calldata: use when you want to pass values to another function
    - it will save gas compared to memory

- Vid 28: Simple Storage

  - normal getting and setting app
  - used calldata and memory

- Vid 29: TODO list

  - created a todo list in solidity

- Vid 30: Events
  - used to write data on the blockchain
  - contract can not retrive the data after
  - can be a good alternative of state variable in some cases
  - not a read only function as it sends transactions
