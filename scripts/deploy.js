const hre = require("hardhat");

async function main() {

  const Onft = await hre.ethers.getContractFactory("Onft");
  const onft = await Onft.deploy();

  await onft.deployed();

  console.log("Your Contract is Deployed to", onft.address);

  const nftMint = await onft.mint(5);

  console.log("You have minted 5 nfts", nftMint);
  
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
