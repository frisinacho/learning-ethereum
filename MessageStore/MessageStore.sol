pragma solidity ^0.4.24;

import "./Ownable.sol";

contract MessageStore is Ownable {

	address private owner;
	string private message;

	constructor() public {
		owner = msg.sender;
	}

	function setMessage(string newMessage) public payable {
		require(msg.value == 3 ether);
		message = newMessage;
	}

	function getMessage() public view returns (string) {
		return message;
	}
}