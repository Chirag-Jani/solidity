// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract FunctionOutputs {
    function returnMany() public pure returns (uint256, bool) {
        return (32, true);
    }

    function named() public pure returns (uint256 val, bool on) {
        return (69, false);
    }

    // saved little bit of a gas
    function assigned() public pure returns (uint256 val, bool on) {
        val = 69;
        on = false;
    }

    // multiple,  destructuring, named, and assignments included
    function destructuringAssignments()
        public
        pure
        returns (
            uint256 x,
            bool b,
            bool y
        )
    {
        (x, b) = returnMany(); // captured all the vars
        (, y) = returnMany(); // skipped the 1st by using coma
    }
}
