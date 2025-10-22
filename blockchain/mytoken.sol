// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title MyToken — ERC20 with Ownable, Pausable, Burnable, and owner mint
/// @notice Simple, secure token for demos & testing. Use OpenZeppelin's audited implementations.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Pausable, Ownable {
    /// @notice decimals defaults to 18 via ERC20 implementation

    constructor(string memory name_, string memory symbol_, uint256 initialSupply) ERC20(name_, symbol_) {
        // mint initial supply to deployer
        _mint(msg.sender, initialSupply);
    }

    /// @notice Owner-only mint function for controlled supply increases
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /// @notice Pause token transfers (owner only)
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause token transfers (owner only)
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @dev Hook to prevent transfers while paused
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override whenNotPaused {
        super._beforeTokenTransfer(from, to, amount);
    }
}
