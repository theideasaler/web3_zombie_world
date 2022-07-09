//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Inbox {
    string public message;
 
    constructor(string memory initialMessage) {
       message = initialMessage;
    }

    function setMessag(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
