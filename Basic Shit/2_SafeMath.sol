// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SafeMath {
    function uncheckedFunc() public pure returns (uint256) {
        uint256 x = 0;
        unchecked {
            x--; // will set x to the maximum value of uint256 possible in older version but not in this one
        }
        return x;
    }

    function checkedFunc() public pure returns (uint256) {
        uint256 x = 0;
        x--; // will throw an error
        return x;
    }
}
