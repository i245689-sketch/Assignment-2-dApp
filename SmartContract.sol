// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title MessageBoard - a tiny public message board
/// @notice Anyone can post a short message; everyone can read it.
contract MessageBoard {
    string private message = "Hello, Sepolia!";
    address private lastUpdater;
    uint256 private updateCount;

    event MessageUpdated(address indexed updater, string newMessage, uint256 updateCount);

    /// @notice WRITE: replace the board's message (costs gas)
    function setMessage(string calldata _message) external {
        require(bytes(_message).length > 0, "Message cannot be empty");
        require(bytes(_message).length <= 140, "Max 140 characters");

        message = _message;
        lastUpdater = msg.sender;
        updateCount += 1;

        emit MessageUpdated(msg.sender, _message, updateCount);
    }

    /// @notice READ: current message (free)
    function getMessage() external view returns (string memory) {
        return message;
    }

    /// @notice READ: how many times the message has been changed
    function getUpdateCount() external view returns (uint256) {
        return updateCount;
    }

    /// @notice READ: address of the wallet that last changed the message
    function getLastUpdater() external view returns (address) {
        return lastUpdater;
    }
}
