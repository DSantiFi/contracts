// SPDX-License-Identifier: MIT

/// @dev this is interface is used for multisig decode calls
pragma solidity ^0.8.0;

interface IMultisigCall {

    function addLiquidity(uint256 _amount) external;
    function removeReflectionExcluded(address account) external;
    function addReflectionExcluded(address account) external;
    function addTaxExcluded(address account) external;
    function removeTaxExcluded(address account) external;
    function removeBot(address account) external;
    function withdrawAll() external;
    function setMaxTransfer(uint256 maxTransfer) external;
    function setSwapFees(bool swapFees) external;
    function setUseSecondFees(bool useSecondFees) external;
    function mint(address account, uint256 amount) external;
    function withdraw(address _token, address _to, uint256 _amount) external;
    function withdrawETH(address payable _to, uint256 _amount) external;
    function airdrop(address[] memory accounts, uint256[] memory amounts) external;
    function claimReflection() external;
    function swapAll() external;
    function transfer(address sender, address recipient, uint256 amount) external;
}
