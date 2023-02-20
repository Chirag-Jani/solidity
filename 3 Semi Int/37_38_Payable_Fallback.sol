// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract PF {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposite() external payable {}

    function chechBal() external view returns (uint256) {
        return address(this).balance;
    }
}

/**
              
                Ether sent to contract?
                          |
                    is msg.data empty?
                    /               \
                Yes                  No
                /                       \
            receive() exist?            fallback()
            /           \
          yes            no
           |               |
        receive()       fallback()


 */

contract FallbackExample {
    event Log(string func, address sender, uint256 amount, bytes data);

    fallback() external payable {
        emit Log("Fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("Receive", msg.sender, msg.value, "");
    }
}

// can use "Low Level Transactions" part of the remix to test this
