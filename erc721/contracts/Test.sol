// contracts/Test.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MyNFT is ERC721, Ownable {
    mapping(address => uint8) role; // 0: user, 1: admin
    mapping(uint256 => address) creator;

    using Counters for Counters.Counter;
    Counters.Counter tokenId; // token id

    constructor() ERC721("Test", "T") {}
}
