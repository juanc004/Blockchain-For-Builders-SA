// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Uints} from "../../src/01-BasicTypes/Uints.sol";

contract UintsTest is Test {
    Uints uints;

    function setUp() public {
        uints = new Uints();
    }

    function testA() public view {
        assertLt(uints.a(), 256);
    }

    function testB() public view {
        assertGe(uints.b(), 256);
    }

    function testSum() public view {
        assertEq(uints.a() + uints.b(), uints.sum());
    }
}
