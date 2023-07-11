// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Onft is ERC721A {
    constructor() ERC721A("Omkar", "OKnft") {}

    function mint(uint256 quantity) external payable {
        // quantity is the amount nfts you want to mint
        _mint(msg.sender, quantity);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "ipfs://Qme7hsHVKXa3xKY5qohWGc21U1TmnNknDuaxnqAhy6oGZ3/";
    }

    function promptDescription() external pure returns (string memory) {
        return
            "Ryan renolds in full deadpool costume mugshot , red and black , pencil sketch ";
    }
}
