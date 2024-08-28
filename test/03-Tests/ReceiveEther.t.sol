// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {ReceiveEther} from "../../src/03-SendingEther/ReceiveEther.sol";

contract ReceiveEtherTest is Test {
    ReceiveEther receiveEther;

    address msgSender = address(3);

    function setUp() public {
        /// @dev - Sets up a prank from an address with 10 ether.
        hoax(msgSender, 10 ether); // sets up msgSender with 10 ether
        receiveEther = new ReceiveEther();
        console.log("Balance of msgSender after hoax:", msgSender.balance);
    }

    function testSendEther() public {
        address contractAddr = address(receiveEther);

        // send 2 ether to the contract using a low-level call
        (bool success, ) = contractAddr.call{value: 2 ether}("");
        require(success, "Ether transfer failed");

        // Log the balance of msgSender after sending Ether
        console.log(
            "Balance of contractAddr after sending ether:",
            contractAddr.balance
        );

        // Assert the contract's balance is now 2 ether
        assertEq(contractAddr.balance, 2 ether);
    }
}
