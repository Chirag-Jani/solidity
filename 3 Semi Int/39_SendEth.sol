// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Example {
    constructor() payable {}

    receive() external payable {}

    function sendTransfer(address payable _to) external payable {
        _to.transfer(msg.value);
    }

    function sendSend(address payable _to) external payable {
        bool sent = _to.send(msg.value);
        require(sent, "Send failed");
    }

    function sendCall(address payable _to) external payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Call failed");
    }
}

contract Demo {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
