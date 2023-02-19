// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Arrays {
    uint256[3] public staticArr = [1, 2, 3];
    uint256[] public dynamicArr = [4, 5, 6, 7];

    function example() public {
        staticArr.push(4); // will give an error

        dynamicArr.push(8); // will push

        dynamicArr[3] = 999; // will update

        delete dynamicArr[1]; // [4, 0, 6, 7, 8]

        dynamicArr.pop(); // [4, 0, 6, 7]

        // create an array in memory (size)
        // memory array should be fixed in size and push pop not available
        uint256[] memory temp = new uint256[](5);
    }
}
