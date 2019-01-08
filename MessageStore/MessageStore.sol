pragma solidity ^0.4.24;

contract MessageStore {

	address private owner;

	constructor() {
		owner = msg.sender;
	}

}