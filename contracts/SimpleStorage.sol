// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 private value;
    address public owner;

    event ValueChanged(address indexed setter, uint256 newValue);

    constructor(uint256 initial) {
        value = initial;
        owner = msg.sender;
    }

    function set(uint256 newValue) external {
        value = newValue;
        emit ValueChanged(msg.sender, newValue);
    }

    function get() external view returns (uint256) {
        return value;
    }
}
