// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/* 🏁 Your Goal: Charity Donation
 * - Let's take all funds that were passed to the receive function and donate them to charity. We'll do this in two steps.
 * - First, modify the constructor to accept a new argument: the charity address.
 * - Next, add a new function called donate. When this function is called transfer all remaining funds in the contract to the charity address.
 **/

contract Charity {
    address public owner;
    address public charity;

    constructor(address _charity) {
        owner = msg.sender;
        charity = _charity;
    }

    // function tip() public payable{
    //     (bool success,) = owner.call{ value: msg.value }("");
    //     require(success);
    // }

    function tip() public payable {
        payable(owner).transfer(msg.value);
    }

    // function donate() public payable {
    //   (bool success,) = charity.call(value: address(this).balance)("");
    //   require(success);
    // }

    function donate() public payable {
      payable(charity).transfer(address(this).balance);
    }

    receive() external payable {}
}
