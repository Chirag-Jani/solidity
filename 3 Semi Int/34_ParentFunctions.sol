// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/*
    E
  /   \
 F     G
  \   /
    H

*/

contract A {
    event Log(string funcName);

    function foo() public virtual {
        emit Log("A.foo");
    }

    function bar() public virtual {
        emit Log("A.bar");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar");
        super.bar();
    }
}

contract C is A, B {
    function foo() public override(A, B) {
        emit Log("C.foo");
        B.foo();
    }

    function bar() public override(A, B) {
        emit Log("C.bar");
        super.bar();
    }
}
