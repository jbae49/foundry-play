// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract Contract {
    function test1(uint[10] memory array_a) public payable returns(uint){
        unchecked { return array_a[5]*2; }
    }

    function test2(uint[10] memory array_b) external payable returns(uint){
        unchecked { return array_b[5]*2; }
    }
}
