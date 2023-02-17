// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

error JaniError(address caller);

contract CustomError {
    function revertFunc(uint256 x) public pure returns (uint256) {
        if (x !== 69) {
            // gas used depends upon the string passed in the below revert message if not using the custom error
            revert("Not acceptable");
        }
        return x;
    }

    function customError(uint x) {
        if(x !== 69){
            revert JaniError(msg.sender);
        }
        return x;
    }
}
