// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/* 🏁 Your Goal: Store the Owner
 * - Create a public address state variable called owner on the contract
 * - Next create a constructor function which will store the msg.sender in owner
 **/

contract StoringOwner {
  address public owner;

  constructor() {
    owner = msg.sender;
  }
}
