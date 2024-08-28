// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {TipOwner} from "../../src/03-SendingEther/TipOwner.sol";

contract TipOwnerTest is Test {
    TipOwner tipOwner;

    address msgSender = address(3);

    function setUp() public {
        vm.prank(msgSender);
        tipOwner = new TipOwner();
    }

    function testTip() public {
        tipOwner.tip{value: 1 ether}();
        
        // Log the balance of the owner after receiving the tip
        console.log("Owner balance after tip:", tipOwner.owner().balance);

        // Alternatively, log the balance of msgSender if you are checking the sender's balance
        console.log("msgSender balance after tip:", msgSender.balance);
        assertEq(msgSender.balance, 1 ether);
    }
}
