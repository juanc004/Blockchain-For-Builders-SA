// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Sidekick} from "../../src/04-Calldata/CallFunction.sol";
import {Hero} from "../../src/04-Calldata/Hero.sol";

contract SidekickTest is Test {
    Sidekick public sidekick;
    Hero public hero;

    function setUp() public {
        sidekick = new Sidekick();
        hero = new Hero();
    }

    function testSendAlert() public {
        // Initial state check
        assertEq(hero.alerted(), false);
        console.log("Alert function before called on Hero:", hero.alerted());

        // Call sendAlert function on the Sidekick contract
        sidekick.sendAlert(address(hero));

        // Check if the alert function in Hero was called
        assertEq(hero.alerted(), true);

        // Log the result to console
        console.log("Alert function was called on Hero:", hero.alerted());
    }
}
