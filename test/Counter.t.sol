// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Counter, Test {
    uint256 public initialNumber = 3;

    constructor() Counter(initialNumber) {}

    function testInit() public view {
        assertEq(number, 3, "Initial number should be set");
    }
}
