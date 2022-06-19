// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

import "../lib/forge-std/src/Test.sol";
import "../src/Contract.sol";



contract ContractTest is Test {
    Contract public SampleContract;
    uint[10] SampleArray;

    function setUp() public {
        SampleContract = new Contract();
        SampleArray = [1,2,3,4,5,6,7,8,9,10];
    }

    function test_test1() public {
        uint result1 = SampleContract.test1(SampleArray);
        assertEq(result1, 12);
    }

    function test_test2() public {
        uint result2 = SampleContract.test2(SampleArray);
        assertEq(result2, 12);
    }

}
