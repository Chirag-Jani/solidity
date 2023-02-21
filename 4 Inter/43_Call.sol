// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract TestCall {
    string public message;
    uint256 public x;

    event Log(string message);

    fallback() external payable {
        emit Log("Fallback");
    }

    function foo(string memory _message, uint256 _x)
        external
        payable
        returns (bool, uint256)
    {
        message = _message;
        x = _x;
        return (true, 499);
    }

    // if you uncomment this, you'll get the output
    // function doesNotExist() external pure returns (uint256) {
    //     return 69;
    // }
}

contract Call {
    bytes public data;

    function foo(address _test) external payable {
        (bool success, bytes memory _data) = _test.call{value: 111}(
            abi.encodeWithSignature("foo(string,uint256)", "Jani", 69)
        );
        require(success, "call failed");
        data = _data;
    }

    // when func doen't exist
    function doesNotExist(address _test) external {
        (bool success, ) = _test.call(
            abi.encodeWithSignature("doesNotExist()")
        );

        require(success, "failed");
    }
}
