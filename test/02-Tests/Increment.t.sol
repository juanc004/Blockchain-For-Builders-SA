// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Increment} from "../../src/02-Functions/Increment.sol";

contract IncrementTest is Test {
    Increment inc;

    function setUp() public {
        inc = new Increment(5);
    }

    function testConstructor() public view {
        assertEq(inc.x(), 5);
    }

    function testIncrement() public {
        inc.inc();
        assertEq(inc.x(), 6);
        console.log(inc.x());
    }
}
