// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Sidekick} from "../../src/04-Calldata/FunctionSignature.sol";
import {Hero} from "../../src/04-Calldata/Hero.sol";

contract SidekickTest is Test {
    Sidekick public sidekick;
    Hero public hero;

    function setUp() public {
        sidekick = new Sidekick();
        hero = new Hero();
    }

    function testAlert() public {
        console.logBool(hero.alerted());
        sidekick.sendAlert(address(hero));
        assertEq(hero.alerted(), true, "it should have alerted the hero");
        console.logBool(hero.alerted());
    }
}
