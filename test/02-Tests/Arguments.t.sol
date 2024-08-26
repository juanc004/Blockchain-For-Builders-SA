// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Arguments} from "../../src/02-Functions/Arguments.sol";

contract ArgumentsTest is Test {
    Arguments arguments;

    function setUp() public {
        arguments = new Arguments(0);
    }

    function testConstrucor() public view {
      assertEq(arguments.x(), 0);
      console.log(arguments.x());
    }

}