// contracts/Test.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is ERC721, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter public tokenIdCounter; // token id

    mapping(address => uint8) role; // 0: user, 1: admin
    mapping(uint256 => address) creator;

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {}

    function safeMint(address _to) public onlyOwner {
        uint256 tokenId = tokenIdCounter.current();
        tokenIdCounter.increment();
        _safeMint(_to, tokenId);
    }
}
