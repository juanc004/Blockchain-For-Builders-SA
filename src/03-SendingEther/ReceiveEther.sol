// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/* 🏁 Your Goal: Receive Ether
 * - Add a function to the contract that will allow it to receive ether on a transaction without any calldata.
 **/


contract ReceiveEther {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    receive() external payable {}
}
