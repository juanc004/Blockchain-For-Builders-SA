// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/*
 * 🏁 Your Goal: Make Some Food!
 * - In the enum provided you'll see there are four types of Foods 🍎🍌🍕🥯
 * - Take the values and store them in food1, food2, food3, and food4
 * - 🎨 Feel free to pick your own favorite foods and use them instead!
 */
contract Enums {
  enum Foods { Pizza, Burger, Cheesecake, Cake}

  Foods public food1 = Foods.Pizza;
	Foods public food2 = Foods.Burger;
	Foods public food3 = Foods.Cheesecake;
	Foods public food4 = Foods.Cake;
}