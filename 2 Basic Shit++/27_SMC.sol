// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract DataLocations {
    struct Member {
        address addr;
        uint256 age;
    }

    mapping(address => Member) getMember;

    function example() external {
        Member memory mem1 = getMember[msg.sender];
    }

    // did not finish coz got bored :/
}
