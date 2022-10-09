// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "../node_modules/hardhat/console.sol";

import "../node_modules/@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "../node_modules/@openzeppelin/contracts/utils/Counters.sol";

contract NFT is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;string internal baseURI;

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    constructor() ERC721("Transaction Information", "TIM") {}

    constructor(string memory tokenName, string memory symbol) ERC721(tokenName, symbol) {
        _baseURI("ipfs://");
    }

    function mint(address owner, string memory metadataURI) public returns (uint256) {
        _tokenIdCounter.increment();

        uint256 id = _tokenIdCounter.current();
        _safeMint(owner, id);
        _setTokenURI(id, metadataURI);

        return _tokenIdCounter.current();
    }
}
