// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {ConsoleLog} from "../../src/02-Functions/ConsoleLog.sol";

contract ConsoleLogTest is Test {
    ConsoleLog public consoleLog;

    function setUp() public {
        consoleLog = new ConsoleLog();
    }

    function testWin() public view {
        assertEq(consoleLog.winningNumber(), 794);
        console.log(consoleLog.winningNumber());
    }
}
