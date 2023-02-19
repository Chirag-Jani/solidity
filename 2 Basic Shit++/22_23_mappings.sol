// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Mappings {
    mapping(address => uint256) balance;
    mapping(address => mapping(address => bool)) isFriend;

    // stores key-value pairs
    // set, get, and delete
    function example() public {
        balance[msg.sender] = 44; // setting
        uint256 x = balance[msg.sender]; // getting 44
        balance[msg.sender] = 69; // updating

        delete balance[msg.sender]; // reset to 0
    }
}

contract IterableMapping {
    mapping(address => uint256) balances;
    mapping(address => bool) inserted;
    address[] public keys;

    function set(address _key, uint256 _val) external {
        balances[_key] = _val;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getLength() external view returns (uint256) {
        return keys.length;
    }

    function first() external view returns (uint256) {
        return balances[keys[0]];
    }

    function last() external view returns (uint256) {
        return balances[keys[key.length - 1]];
    }

    function ith(uint256 _i) external view returns (uint256) {
        return balances[keys[_i]];
    }
}
