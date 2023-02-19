// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract SimpleStorage {
    string text;

    // using calldata will save gas for us instead of memory
    function set(string calldata _text) external {
        text = _text;
    }

    // will copy the state variable text into the memory and then return it
    function get() external view returns (string memory) {
        return text;
    }
}
