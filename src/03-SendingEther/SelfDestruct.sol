// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract SelfDestruct {
    address public owner;
    address public charity;

    constructor(address _charity) payable {
        owner = msg.sender;
        charity = _charity;
    }

    function tip() public payable {
        payable(owner).transfer(msg.value);
    }

    function donate() public payable {
        selfdestruct(payable(charity));
    }

    receive() external payable {}
}
