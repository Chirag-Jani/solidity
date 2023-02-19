// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Arrays {
    uint256[] public arr = [4, 5, 6, 7];

    function removeShift(uint256 idx) public {
        // assuming idx = 1 in here

        require(idx >= 0 && idx < arr.length, "Invalid Index");

        // will not delete the element but reset the value
        delete arr[idx]; // [4, 0, 6, 7]

        // to delete by shifting
        for (uint256 i = idx; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }

        // [4, 6, 7, 7]

        arr.pop(); // [4, 6, 7]
    }

    function removeReplace(uint256 idx) {
        require(idx >= 0 && idx < arr.length, "Invalid Index");
        arr[idx] = arr[arr.length - 1];
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4];
        remove(2);

        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr.length == 3);
    }
}
