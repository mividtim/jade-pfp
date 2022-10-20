// contracts/JadePfp.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract JadePfp is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("JadePfp", "JadePfp") {}

    function mintNFT(address recipient, string memory tokenUri)
        public onlyOwner
        returns (uint256)
    {
        _tokenIds.increment();
        if (_tokenIds._value > 10_000) {
            revert("We've already minted 10,000 NFTs");
        }
        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setBaseURI(tokenUri);
        return newItemId;
    }
}
