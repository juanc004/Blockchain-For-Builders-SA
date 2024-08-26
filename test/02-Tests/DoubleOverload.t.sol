// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {DoubleOverload} from "../../src/02-Functions/DoubleOverload.sol";

contract DoubleOverloadTest is Test {
    DoubleOverload doubleOverload;

    function setUp() public {
        doubleOverload = new DoubleOverload();
    }

    function testDouble() public view {
        assertEq(doubleOverload.double(2), 4);
        assertEq(doubleOverload.double(4), 8);
    }

    function testDoubleWithTwoParams() public view {
        (uint x, uint y) = doubleOverload.double(2, 2);
        assertEq(x, 4);
        assertEq(y, 4);

        (uint x2, uint y2) = doubleOverload.double(5, 10);
        assertEq(x2, 10);
        assertEq(y2, 20);
    }
}
