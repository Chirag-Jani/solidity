// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract A {
    string public a;

    constructor(string memory _a) {
        a = _a;
    }
}

contract B {
    string public b;

    constructor(string memory _b) {
        b = _b;
    }
}

// two ways to call parent constructor
// 1
// contract C is A("a"), B("b") {
//     // code goes here
// }

// 2
contract C is A, B {
    string public c;

    constructor(
        string memory _c,
        string memory _a,
        string memory _b
    ) A(_a) B(_b) {
        c = _c;
    }
}
