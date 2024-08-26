// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*  🏁 Your Goal: Double Uint
 * - Create an external, pure function called double which takes a uint parameter 
 * - and doubles it. It should return this doubled uint value.
 */
contract PureDouble {
  function double(uint x) external pure returns(uint) {
      return x * 2;
  }
}