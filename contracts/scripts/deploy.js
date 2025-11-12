async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying with:", deployer.address);

  const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
  const instance = await SimpleStorage.deploy(123);
  await instance.deployed();

  console.log("SimpleStorage deployed to:", instance.address);
}

main()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error(err);
    process.exit(1);
  });
