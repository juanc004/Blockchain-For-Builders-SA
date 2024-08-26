// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Booleans} from "../../src/01-BasicTypes/Booleans.sol";

contract BooleansTest is Test {
    Booleans booleans;

    function setUp() public {
        booleans = new Booleans();
    }

    function testBooleans() public view {
        assertEq(booleans.a(), true);
        assertEq(booleans.b(), false);
        console.log(booleans.a());
        console.log(booleans.b());
    }
}
