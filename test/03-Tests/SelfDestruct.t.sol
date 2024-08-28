// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {SelfDestruct} from "../../src/03-SendingEther/SelfDestruct.sol";

contract SelfDestructTest is Test {
    SelfDestruct public selfDestruct;
    address msgSender = address(3);
    address charity = address(4);

    function setUp() public {
        vm.prank(msgSender);
        selfDestruct = new SelfDestruct(charity);
        (bool success,) = address(selfDestruct).call{ value: 4 ether }("");
        require(success);
        selfDestruct.donate();
    }

    function testDonate() public view {
        assertEq(charity.balance, 4 ether);
    }

    function testDestruction() public view {
        assert(!isContract(address(selfDestruct)));
    }

    function isContract(address _addr) public view returns (bool) {
        uint32 size;
        assembly {
            size := extcodesize(_addr)
        }
        return (size > 0);
    }
}