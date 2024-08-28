// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Charity} from "../../src/03-SendingEther/Charity.sol";

contract CharityTest is Test {
    Charity charity;

    address msgSender = address(3);
    address charityAddr = address(4);

    function setUp() public {
        // Simulate deployment by msgSender and log the event
        vm.prank(msgSender);
        charity = new Charity(charityAddr);
        console.log("Contract deployed by:", msgSender);
        console.log("Charity address set to:", charityAddr);

        // Fund the contract with 4 ether and log the balance
        vm.deal(address(charity), 4 ether);
        console.log("Initial contract balance:", address(charity).balance);
    }

    function testSend() public view {
        // Check that the contract received the initial 4 Ether
        console.log(
            "Contract balance before assertion:",
            address(charity).balance
        );
        assertEq(address(charity).balance, 4 ether);
        console.log("testSend passed - Contract balance is 4 ether");
    }

    function testDonate() public {
        // Donate the funds and check if they were transferred correctly
        charity.donate();
        console.log(
            "Charity address balance after donation:",
            charityAddr.balance
        );

        // Ensure the charity address received the 4 ether
        assertEq(address(charityAddr).balance, 4 ether);

        // Ensure the contract balance is now 0
        assertEq(address(charity).balance, 0 ether);
    }
}
