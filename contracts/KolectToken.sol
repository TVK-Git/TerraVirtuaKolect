pragma solidity ^0.6.0;

import "./presets/ERC20PresetMinterPauser.sol";
import "./ERC20/ERC20Capped.sol";

contract KolectToken is ERC20PresetMinterPauser, ERC20Capped{
    using SafeMath for uint256;

    constructor(string memory tokenName, string memory tokenSymbol, uint256 supply, address beneficiary) public ERC20PresetMinterPauser(tokenName,tokenSymbol) ERC20Capped(SafeMath.mul(supply,1 ether)) {
        _mint(beneficiary, SafeMath.mul(supply,1 ether));
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override(ERC20PresetMinterPauser, ERC20Capped) {
        super._beforeTokenTransfer(from, to, amount);
    }
}