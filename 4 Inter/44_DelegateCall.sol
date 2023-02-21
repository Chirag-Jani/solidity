// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

/*

Normal Call:
A calls B, sends 100 wei
        B calls C, sends 50 wei
A ----> B ----> C
                C has,
                    msg.sender = B
                    msg.value = 50 
                    execute code in C's state variables and functions
                    use ETH available in contract C


------------------

Delegate Call:
A calls B, sends 100 wei
        B delegatecalls C
A ----> B ------------> C
                        C has,
                            msg.sender = A
                            msg.value = 100
                            execute code in B's state variables and functions
                            use ETH available in contract B


*/

contract TestDelegateCall {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setVars(uint256 _num) external payable {
        num = _num + 78;
        sender = msg.sender;
        value = msg.value;
    }
}

contract DelegateCall {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setVars(address _test, uint256 _num) external payable {
        // (bool success, bytes memory data) = _test.delegatecall(
        //     abi.encodeWithSignature("setVars(uint256)", _num)
        // );

        // or

        (bool success, ) = _test.delegatecall(
            abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
        );

        require(success, "delegate call failed");
    }
}
