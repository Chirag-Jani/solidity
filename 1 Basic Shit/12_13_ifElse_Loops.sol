// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Loops {
    function demoCondition(uint256 inputNum) public pure returns (uint256) {
        if (inputNum > 5) {
            return 69;
        }

        return inputNum > 69 ? 96 : inputNum; // return keyword comes before
    }

    function forLoop() public pure {
        for (uint256 i = 0; i < 15; i++) {
            if (i == 3) {
                continue;
            }
            if (i == 10) {
                break;
            }

            // do whatever
        }
        uint256 j = 5;
        while (j > 0) {
            // do whatever
            j--;
        }
    }

    function sum(uint256 n) public pure returns (uint256) {
        uint256 s = 0;
        for (uint256 index = 0; index < n; ++index) {
            s += index;
        }

        return s;
    }
}
