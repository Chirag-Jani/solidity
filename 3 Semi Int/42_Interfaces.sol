// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Counter {
    uint256 public count;

    function inc() external {
        count += 1;
    }
}

interface ICounter {
    // to get count variable
    function count() external view returns (uint256);

    // to call inc function
    function inc() external;
}

contract CallCounter {
    uint256 public counterClone;

    function inc(address _counter) external {
        ICounter(_counter).inc();
        counterClone = ICounter(_counter).count();
    }
}
