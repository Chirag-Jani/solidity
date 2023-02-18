// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract FuncCounter {
    function pureDemo(int256 x, int256 y) public pure returns (uint256) {
        return uint256(x + y); // converts int type to uint type
    }

    uint256 count = 0;

    function inc() public {
        count++;
    }

    function dec() public {
        count--;
    }

    function getCount() public view returns (uint256) {
        return count;
    }
}
