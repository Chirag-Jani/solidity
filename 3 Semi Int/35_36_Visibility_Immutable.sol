// Visibility
/*

    private : inside the contract
    internal: inside the contract + child contracts
    public  : inside and outside the contract
    external: only from outside the contract (though we can use this keyword to call but it is gas inefficient)

 */
//  Immutable
// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Demo {
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }
}
