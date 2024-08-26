// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*  🏁 Your Goal: Unsigned Int Constructor
 * - Create a constructor which will take a uint as an argument.
 * - Store this uint value inside a public storage variable called x.
 */
contract Arguments {
    uint public x;
    
    constructor(uint _x) {
        x = _x;
    }
}
