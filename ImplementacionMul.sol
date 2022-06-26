// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

import "./Interface.sol";

contract ImplementacionMul is Multiply{
  function mul(uint numero1, uint numero2) public override pure returns (uint){
      return numero1 * numero2;
  }
}
