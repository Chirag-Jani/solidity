// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Const {
    uint256 public constant c = 69;
    uint256 public d = 69;

    // uses less gas to read constant and can be decalred as pure func
    function readC() public pure returns (uint256) {
        return c;
    }

    // uses more gas to read variable and must be decalred as view
    function readD() public view returns (uint256) {
        return d;
    }
}
