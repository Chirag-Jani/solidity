// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract CallExample {
    function setX(address _exampleContract, uint256 _x) external {
        Example(_exampleContract).setX(_x);
    }

    function getX(Example _exampleContract) external view returns (uint256) {
        return _exampleContract.getX();
    }

    function setXandReceiveEther(Example _exampleContract, uint256 _x)
        external
        payable
    {
        _exampleContract.setXandReceiveEther{value: msg.value}(_x);
    }

    function getXandValue(address _exampleContract)
        external
        view
        returns (uint256 x, uint256 value)
    {
        (x, value) = Example(_exampleContract).getXandValue();
    }
}

contract Example {
    uint256 public x;
    uint256 public value = 123;

    function getX() external view returns (uint256) {
        return x;
    }

    function setXandReceiveEther(uint256 _x) external payable {
        x = _x;
        value = msg.value;
    }

    function setX(uint256 _x) external {
        x = _x;
    }

    function getXandValue() public view returns (uint256, uint256) {
        return (x, value);
    }
}
