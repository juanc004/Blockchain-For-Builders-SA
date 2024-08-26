// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*  🏁 Your Goal: Add Uint
 * - Create an external view function add which takes a uint parameter and
 * - returns the sum of the parameter plus the state variable x.
 */
contract ViewAddition {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x++;
    }

    function add(uint _x) external view returns(uint) {
      return (x + _x);
    }
}
