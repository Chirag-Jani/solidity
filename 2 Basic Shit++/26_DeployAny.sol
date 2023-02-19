// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract TestContract1 {
    address public owner;

    function setOwner(address _owner) external {
        require(msg.sender == owner, "Unauthorized");
        owner = _owner;
    }
}

contract Proxy {
    event Deployed(address ContractDeployedAt);

    function deploy(bytes memory _code)
        external
        payable
        returns (address addr)
    {
        assembly {
            // create(v,p,n)
            // v = amount of ETH to send
            // p = pointer in memory to start the code
            // n = size of code

            // can not interpret msg.value, so we use callvalue()
            // argument _code is set in the first 32 bytes of memory that's why we are adding 0x20 which is equal to 32 in decimal to skip that
            // and later we are loading the bytecode for the size
            addr := create(callvalue(), add(_code, 0x20), mload(_code))
        }

        require(addr != address(0), "Deploy Failed");

        emit Deployed(addr);
    }
}
