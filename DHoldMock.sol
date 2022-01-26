// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;
import "./DHold.sol";
 
contract DHoldMock is DHold {

    constructor(
        address uniswapFactory,
        address uniswapRouter,
        address payable marketing, //multisig with 5%
        address payable treasury //multisig with 5%
    ) DHold(uniswapFactory, uniswapRouter, marketing, treasury) {
        
    }

    function claimExcludedReflections(address from) public virtual override onlyOwner {
        _claimReflection(from, payable(marketingWallet));
    }
}