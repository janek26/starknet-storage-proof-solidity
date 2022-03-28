// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./PrecomputedTable48x0.sol";
import "./PrecomputedTable48x1.sol";

contract PrecomputedTable48 {
  function get(uint8 n) external pure returns (uint256 x, uint256 y) {
    if (n >= 128) {
      return PrecomputedTable48x1.get(n - 128);
    } else {
      return PrecomputedTable48x0.get(n);
    }
  }
}
