
## Stable coin

```sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract StableCoin is ERC20, Ownable {
    address public minter;

    // Events for minting and burning
    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);
    event MinterChanged(address indexed newMinter);

    constructor() ERC20("USD Stablecoin", "USDS") Ownable(msg.sender) {
        minter = msg.sender; // Owner is initial minter
    }

    // Modifier to restrict functions to minter
    modifier onlyMinter() {
        require(msg.sender == minter, "Caller is not the minter");
        _;
    }

    // Mint new tokens (only minter)
    function mint(address to, uint256 amount) external onlyMinter {
        require(to != address(0), "Invalid address");
        _mint(to, amount);
        emit Mint(to, amount);
    }

    // Burn tokens (only minter)
    function burn(address from, uint256 amount) external onlyMinter {
        require(from != address(0), "Invalid address");
        _burn(from, amount);
        emit Burn(from, amount);
    }

    // Set new minter (only owner)
    function setMinter(address newMinter) external onlyOwner {
        require(newMinter != address(0), "Invalid address");
        minter = newMinter;
        emit MinterChanged(newMinter);
    }

    // Optional: Pause transfers in emergencies
    bool public paused;
    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    function pause() external onlyOwner {
        paused = true;
    }

    function unpause() external onlyOwner {
        paused = false;
    }

    // Override transfer to include pause check
    function transfer(address to, uint256 amount) public override whenNotPaused returns (bool) {
        return super.transfer(to, amount);
    }
}

