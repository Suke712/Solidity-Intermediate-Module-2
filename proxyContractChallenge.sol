// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract implementationContract{
    uint public result;
    address public sender;

    function set(uint _num1) public payable{

        result = _num1 ;
        sender = msg.sender;
    }

    
}

contract proxyContract{
    uint public result;
    address public sender;

    function set(address _implementationContract, uint _num1) public payable{
        (bool success, bytes memory data) = _implementationContract.delegatecall(
            abi.encodeWithSignature("set(uint256)", _num1)
        );
    }
}
