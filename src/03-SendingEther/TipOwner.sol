// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/* 🏁 Your Goal: Transfer Tips
 * - Let's create a way to tip the contract owner!
 * - Create a public payable function tip which sends any of its received ether to the owner.
 **/

contract TipOwner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // function tip() public payable{
    //     (bool success,) = owner.call{ value: msg.value }("");
    //     require(success);
    // }

    function tip() public payable {
        payable(owner).transfer(msg.value);
    }

    receive() external payable {}
}
