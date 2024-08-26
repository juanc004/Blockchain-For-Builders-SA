// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*  🏁 Your Goal: Overload Double
 * - Create another pure external function double which takes two uint parameters.
 * - Double both of the arguments and return both of them in the same order they were passed into the function.
 */
contract DoubleOverload {
  function double(uint x) public pure returns(uint) {
      return x * 2;
  }

  function double(uint x, uint y) external pure returns (uint, uint) {
    return (double(x), double(y));
  }

}