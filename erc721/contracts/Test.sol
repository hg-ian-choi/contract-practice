// contracts/Test.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    address deployer;
    mapping(address => uint8) role; // 0: user, 1: admin
    mapping(uint256 => address) creator;
    uint256 tokenId;

    constructor() ERC721("Test", "T") {
        deployer = msg.sender;
    }
}
