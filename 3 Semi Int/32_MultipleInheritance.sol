// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

// Order is: most base-like to derived
/*

     X
   /  |
  Y   |
   \  |
     Z

Here: 
X inherits none
Y inherits X
Z inherits Y and X 

So, order is: X -> Y -> Z


      X
    /   \
   Y     A
   |     |
   |     B
    \   /
      Z

Here:
X inheris none
Y inherits X
A inherits X
B inheris A
Z inherits B, and Y

So, order is: X -> Y -> A -> B -> Z

*/

contract X {
    function xxx() external pure virtual returns (string memory) {
        return "X";
    }
}

contract Y is X {
    function yyy() external pure returns (string memory) {
        return "Y";
    }

    function xxx() external pure virtual override returns (string memory) {
        return "XYXY";
    }
}

// here order matters: if we write Y,X then the contract won't compile
// most base => most derived
contract Z is X, Y {
    function xxx() external pure override(X, Y) returns (string memory) {
        return "XZXZ";
    }

    function zzz() public virtual returns (string memory) {
        return "Z";
    }
}
