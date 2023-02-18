// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Vars {
    uint256 d = 443; // state variable

    function demo() public view {
        uint256 _D = 32; // local variable
        uint256 time = block.timestamp; // local variable storing info from the global variable
    }
}
