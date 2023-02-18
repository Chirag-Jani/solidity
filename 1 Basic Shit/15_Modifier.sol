// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

// Basic modifier
contract BasicModifier {
    uint256 public count = 0;
    bool paused = false;
    modifier whenNotPaused() {
        require(!paused, "Paused");
        _; // _ means that execute the function
    }

    function inc() public whenNotPaused {
        count++;
    }

    function dec() public whenNotPaused {
        count--;
    }
}

// modifier with input

contract InputModifier {
    int256 public count = 0;
    bool paused = false;

    modifier whenNotPaused() {
        require(!paused, "Paused");
        _; // _ means that execute the function
    }

    modifier limit(int256 _x) {
        require(_x >= 100, "x must be >= 100");
        _; // _ means that execute the function
    }

    function incBy(int256 x) public whenNotPaused limit(x) {
        count += x;
    }

    function decBy(int256 x) public whenNotPaused limit(x) {
        count -= x;
    }
}

// sandwich modifier
// modifier code
// func execution
// more modifier code

contract SandwichModifier {
    int256 count = 7;

    modifier sandwich() {
        count *= 10;
        _;
        count /= 5;
    }

    function incCount(int256 _x) public sandwich {
        count += _x;
    }
}
