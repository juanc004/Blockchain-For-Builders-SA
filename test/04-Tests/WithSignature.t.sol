// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Sidekick} from "../../src/04-Calldata/WithSignature.sol";
import {Hero} from "../../src/04-Calldata/Hero2.sol";

contract ContractTest is Test {
    Sidekick public sidekick;
    Hero public hero;

    function setUp() public {
        hero = new Hero();
        sidekick = new Sidekick();
    }

    function testAlert1() public {
        // Log the initial state of the hero
        console.log("Before alert 1:");
        (bool initialAlerted, uint initialEnemies, bool initialArmed) = hero.ambush();
        console.log("Initial alert status:", initialAlerted);
        console.log("Initial enemy count:", initialEnemies);
        console.log("Initial armed status:", initialArmed);

        // Send alert with specific parameters
        sidekick.sendAlert(address(hero), 5, true);

        // Log the state after the alert
        console.log("After alert 1:");
        (bool alerted, uint enemies, bool armed) = hero.ambush();
        console.log("Alert status:", alerted);
        console.log("Enemy count:", enemies);
        console.log("Armed status:", armed);

        // Assertions
        assertEq(alerted, true, "it should have alerted the hero");
        assertEq(enemies, 5, "it should have let the hero know there's 5 enemies");
        assertEq(armed, true, "it should have let the hero know the enemies are armed");
    }

    function testAlert2() public {
        // Log the initial state of the hero
        console.log("Before alert 2:");
        (bool initialAlerted, uint initialEnemies, bool initialArmed) = hero.ambush();
        console.log("Initial alert status:", initialAlerted);
        console.log("Initial enemy count:", initialEnemies);
        console.log("Initial armed status:", initialArmed);

        // Send alert with specific parameters
        sidekick.sendAlert(address(hero), 2, false);

        // Log the state after the alert
        console.log("After alert 2:");
        (bool alerted, uint enemies, bool armed) = hero.ambush();
        console.log("Alert status:", alerted);
        console.log("Enemy count:", enemies);
        console.log("Armed status:", armed);

        // Assertions
        assertEq(alerted, true, "it should have alerted the hero");
        assertEq(enemies, 2, "it should have let the hero know there's 2 enemies");
        assertEq(armed, false, "it should have let the hero know the enemies are not armed");
    }
}
