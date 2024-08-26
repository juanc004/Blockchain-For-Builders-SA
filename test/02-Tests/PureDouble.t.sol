// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {PureDouble} from "../../src/02-Functions/PureDouble.sol";

contract PureDoubleTest is Test {
    PureDouble pureDouble;

    function setUp() public {
        pureDouble = new PureDouble();
    }

    function testDouble() public view {
        assertEq(pureDouble.double(2), 4);
        assertEq(pureDouble.double(4), 8);
    }
}
