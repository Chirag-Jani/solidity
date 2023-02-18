// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Constructor {
    address public owner;
    uint256 public bal;

    constructor(uint256 _bal) {
        owner = msg.sender;
        bal = _bal;
    }
}
