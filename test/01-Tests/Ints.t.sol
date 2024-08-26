// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Ints} from "../../src/01-BasicTypes/Ints.sol";

contract IntsTest is Test {
    Ints ints;

    function setUp() public {
        ints = new Ints();
    }

    function testSignedInts() public view {
        // Test that a and b are of type int8
        assertEq(type(int8).min, -128);
        assertEq(type(int8).max, 127);

        // Test that one is positive and other one negative
        assert(
            (ints.a() > 0 && ints.b() < 0) || (ints.a() < 0 && ints.b() > 0)
        );

        // Test that difference is of type int16
        assertEq(type(int16).min, -32768);
        assertEq(type(int16).max, 32767);

        // Test that difference is the absolute difference between a and b
        int16 expectedDifference = ints.a() > ints.b()
            ? int16(ints.a()) - int16(ints.b())
            : int16(ints.b()) - int16(ints.a());
        assertEq(ints.difference(), expectedDifference);

        // Log the values for verification
        console.log("a:", ints.a());
        console.log("b:", ints.b());
        console.log("difference:", ints.difference());
    }
}
