// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./PrecomputedTable35x0.sol";
import "./PrecomputedTable35x1.sol";

contract PrecomputedTable35 {
  function get(uint8 n) external pure returns (uint256 x, uint256 y) {
    if (n >= 128) {
      return PrecomputedTable35x1.get(n - 128);
    } else {
      return PrecomputedTable35x0.get(n);
    }
  }
}
