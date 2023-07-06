// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract memoryTypes{
    uint public storageValue = 100; //storageValue is a storage variable and its data can be accesed beyween function call

    function update() public returns (uint){
        storageValue += 200;

        uint memoryValue = 200; // memoryValue is memory variable which temporarily stores data and its value is erased as soon as the function finishes executing.
        return  memoryValue;
    }
}
