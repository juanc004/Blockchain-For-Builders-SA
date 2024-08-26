// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*  🏁 Your Goal: Increment x
 * - Let's build on your code from the previous stage!
 * - Create an external function called increment that will add 1 to the state variable x.
 */
contract Increment {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function inc() external {
        x++;
    }
}
