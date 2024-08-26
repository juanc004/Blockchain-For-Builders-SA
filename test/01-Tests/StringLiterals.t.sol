// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from "../../src/01-BasicTypes/StringLiterals.sol";

contract HelloWorldTest is Test {
    HelloWorld helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function testMsg1() public view {
        // Test that msg1 is bytes32 (32 bytes long)
        assertEq(32, abi.encodePacked(helloWorld.msg1()).length);

        // Test that msg1 contains "Hello World"
        assertEq(helloWorld.msg1(), bytes32("Hello World"));

        // Test that msg1 is exactly "Hello World" (right-padded with zeros)
        bytes memory expectedMsg1 = abi.encodePacked("Hello World");
        assertEq(bytes32(expectedMsg1), helloWorld.msg1());
    }
    
    function testMsg2() public view {
        // Test that msg2 is a string
        assertTrue(bytes(helloWorld.msg2()).length > 0);

        // Test that msg2 is longer than 32 bytes
        assertTrue(bytes(helloWorld.msg2()).length > 32);

        // Log the length of msg2 for verification
        console.log("Length of msg2:", bytes(helloWorld.msg2()).length);

        // Log the content of msg2
        console.log("Content of msg2:", helloWorld.msg2());
    }
}
