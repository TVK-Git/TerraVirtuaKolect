const TestToken = artifacts.require("KolectToken");

const tokenName = "Terra Virtua Kolect";
const tokenSymbol = "TVK";
const supply = 1200000000;
const supplyBeneficiary = "Enter-Beneficiary-Address";

module.exports = function(deployer) {
  deployer.deploy(TestToken,tokenName,tokenSymbol,supply,supplyBeneficiary);
};
