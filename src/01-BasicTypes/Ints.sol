// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
 * 🏁 Your Goal: Create Signed Integers!
 * - Create three public storage integers a, b, and difference.
 * - Declare the variables a and b as int8. One of the values must be positive, the other must be negative.
 * - Declare the variable difference as a int16 which is the absolute difference between a and b.
 * - 💡 You can get the absolute difference simply by subtracting the negative number from the positive number.
 * - For instance, for the values 10 and -15, the absolute difference would be 25 which is 10 - -15.
 */

contract Ints {
    int8 public a = 15;
    int8 public b = - 10;
    int16 public difference = a > b ? int16(a) - int16(b) : int16(b) - int16(a);
}
