// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract A {
    function ex1() external pure virtual returns (string memory) {
        return "Jani";
    }

    function ex2() external pure virtual returns (string memory) {
        return "Chirag";
    }
}

contract B is A {
    function ex1() external pure virtual override returns (string memory) {
        return "Jani Chirag";
    }

    function ex2() external pure override returns (string memory) {
        return "Chirag Jani";
    }
}

contract C is B {
    function ex1() external pure override returns (string memory) {
        return "Bhag Yahaan se!!";
    }
}
