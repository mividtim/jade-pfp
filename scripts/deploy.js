async function main() {
    // Grab the contract factory
    const JadePfp = await ethers.getContractFactory('JadePfp');
    // Start deployment, returning a promise that resolves to a contract object
    const jadePfp = await JadePfp.deploy();
    console.info('Contract deployed to address:', jadePfp.address);
}

main()
    .then(() => process.exit(0))
    .catch(err => {
        console.error(err);
        process.exit(1)
    });
