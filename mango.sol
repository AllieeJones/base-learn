// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Mango {
    address public owner;

    event Deposited(address indexed from, uint amount);
    event Withdrawn(address indexed to, uint amount);

    constructor() {
        owner = msg.sender;
    }

    // Anyone can deposit ETH into the contract
    function deposit() public payable {
        require(msg.value > 0, "Must send ETH");
        emit Deposited(msg.sender, msg.value);
    }

    // Only the owner can withdraw all the funds
    function withdraw() public {
        require(msg.sender == owner, "Only owner can withdraw");
        uint balance = address(this).balance;
        require(balance > 0, "Nothing to withdraw");
        payable(owner).transfer(balance);
        emit Withdrawn(owner, balance);
    }

    // Returns the current balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
