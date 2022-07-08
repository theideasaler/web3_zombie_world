//SPDX-License-Identifier: Unlicense
pragma solidity ^0.4.17.0;

import "hardhat/console.sol";

contract Inbox {
    string public message;

    constructor(string initialMessage) {
       message = initialMessage;
    }

    function setMessag(string newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string) {
        return message;
    }
}
