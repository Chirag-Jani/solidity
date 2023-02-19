// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Events {
    event Log(string message, uint256 val);

    function example() external {
        emit Log("Hello World", 69);
    }

    // to search an event by the parameter it was logged, we use indexed keyword
    // max. 3 indexed allowed
    event Message(
        address indexed _from,
        address indexed _to,
        string indexed _text
    );

    function sendMessage(address _to, string calldata _text) external {
        emit Message(msg.sender, _to, _text);
    }
}
