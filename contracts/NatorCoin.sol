pragma solidity ^0.8.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
contract NatorCoin is ERC20 {
  string public constant name = "NatorCoin Token";
  string public constant symbol = "NatorCoin";
  uint8 public constant decimals = 0;
  uint constant INITIAL_SUPPLY = 5000000;
  constructor () public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
