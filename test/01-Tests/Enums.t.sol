// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Enums} from "../../src/01-BasicTypes/Enums.sol";

contract EnumsTest is Test {
    Enums public enums;

    function setUp() public {
        enums = new Enums();
    }

    function testEnumValues() public view {
        assertEq(
            uint(enums.food1()),
            uint(Enums.Foods.Pizza),
            "food1 should be Pizza"
        );
        assertEq(
            uint(enums.food2()),
            uint(Enums.Foods.Burger),
            "food2 should be Burger"
        );
        assertEq(
            uint(enums.food3()),
            uint(Enums.Foods.Cheesecake),
            "food3 should be Cheesecake"
        );
        assertEq(
            uint(enums.food4()),
            uint(Enums.Foods.Cake),
            "food4 should be Cake"
        );
    }
}
