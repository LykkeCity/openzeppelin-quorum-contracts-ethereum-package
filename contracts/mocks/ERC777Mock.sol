pragma solidity ^0.5.0;

import "../token/ERC777/ERC777.sol";

contract ERC777Mock is ERC777 {
    constructor(
        address initialHolder,
        uint256 initialBalance,
        string memory name,
        string memory symbol,
        address[] memory defaultOperators
    ) public {
        ERC777.initialize(name, symbol, defaultOperators, 0x1820a4B7618BdE71Dce8cdc73aAB6C95905faD24);

        _mint(msg.sender, initialHolder, initialBalance, "", "");
    }

    function mintInternal (
        address operator,
        address to,
        uint256 amount,
        bytes memory userData,
        bytes memory operatorData
    ) public {
        _mint(operator, to, amount, userData, operatorData);
    }
}
