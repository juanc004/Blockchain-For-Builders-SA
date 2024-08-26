// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {ViewAddition} from "../../src/02-Functions/ViewAddition.sol";

contract ViewAdditionTest is Test {
    ViewAddition viewAddition;

    function setUp() public {
        viewAddition = new ViewAddition(5);
    }

    function testConstructor() public view {
        assertEq(viewAddition.x(), 5);
    }

    function testIncrement() public {
        viewAddition.increment();
        assertEq(viewAddition.x(), 6);
        console.log(viewAddition.x());
    }

    function testAdd() public view {
        uint _x = viewAddition.add(5);
        assertEq(_x, 10, "it should return the sum");
        assertEq(viewAddition.x(), 5, "it should not affect x");
    }
}
