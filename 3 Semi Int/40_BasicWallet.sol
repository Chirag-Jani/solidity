// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Example {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 amount) external payable {
        require(msg.sender == owner, "Unauthorized");

        // uses more gas
        // owner.transfer(amount);

        // uses less gas as not reading the state variable
        // payable (msg.sender).transfer(amount);

        // also use call as it uses less gas than transfer
        // so use, msg.sender and memory variables and call method to save gas

        (bool sent, ) = payable(msg.sender).call{value: amount}("");
        require(sent, "Fund trasnfer failed");
    }

    function getBalance() public view returns (uint256 bal) {
        bal = address(this).balance;
    }
}
