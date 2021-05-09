var NatorCoin = artifacts.require("./NatorCoin.sol");
module.exports = function(deployer) {
  deployer.deploy(NatorCoin);
};
