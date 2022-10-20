const { createAlchemyWeb3 } = require('@alch/alchemy-web3');
const contract = require('../artifacts/contracts/JadePfp.sol.sol/JadePfp.sol.json');
const stringify = require('json-stringify-safe');

const { API_URL } = process.env;
const web3 = createAlchemyWeb3(API_URL);
const prettyJson = obj => stringify(obj, null, 2);
console.info(prettyJson(contract.abi));
