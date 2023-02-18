// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Errors {
    function testRequire(uint256 i) public pure {
        require(i > 10, "i must be grater than 10");
    }

    function testRevert(uint256 i, uint256 j) public pure {
        if (i > 10) {
            if (j < 5) {
                revert("i must be > 10 and j > 5 for XXX case");
            }

            if (j > 15) {
                revert("i must be > 10 and j > 10 for YYY case");
            }
        }
    }

    uint256 num = 123;

    function testAssert() public view {
        assert(num == 123);
    }
}
