// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {StoringOwner} from "../../src/03-SendingEther/StoringOwner.sol";

contract StoringOwnerTest is Test {
    StoringOwner storingOwner;

    /// @notice Address used to simulate `msg.sender`
    address msgSender = address(0);

    function setUp() public {
        /// @dev `vm.prank` sets the `msg.sender` to the specified address for the next transaction.
        vm.prank(msgSender);
        storingOwner = new StoringOwner();
    }

    function testConstructor() public view {
        assertEq(storingOwner.owner(), msgSender);
        console.log(storingOwner.owner());
    }
}
