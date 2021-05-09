pragma solidity ^0.8.0;
import '../contracts/NatorCoin.sol';
contract NatorCoinTest {
  function testEnsureTokenNameIsCorrect() public {
    NatorCoin token = NatorCoin(DeployedAddresses.NatorCoin());
    string memory expected = "NatorCoin Token";
    string memory actual = token.name();
    Assert.equal(actual, expected, "Ensure token name is correct");
  }
  function testEnsureTotalSupplyIs5Million() public {
    NatorCoin token = NatorCoin(DeployedAddresses.NatorCoin());
    uint256 expected = 5000000;
    uint256 actual = token.totalSupply();    
Assert.equal(actual, expected, "Ensure total supply is correct");
  }
  function testEnsureSymbolIsCorrect() public {
    NatorCoin token = NatorCoin(DeployedAddresses.NatorCoin());
    string memory expected = "NatorCoin";
    string memory actual = token.symbol();
    Assert.equal(actual, expected, "Ensure symbol is correct");
  }
  function testEnsure0Decimals() public {
    NatorCoin token = NatorCoin(DeployedAddresses.NatorCoin());
    uint256 expected = 0;
    uint256 actual = token.decimals();
    Assert.equal(actual, expected, "Ensure 0 decimals");
  }
}
