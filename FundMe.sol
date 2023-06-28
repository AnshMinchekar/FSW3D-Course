//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

//Whenever a transaction reverts, it un-does whatever it did previously and returns the remaining gas.

contract FundMe{
    function fund() public payable{
        //Allow user to send money
        //Have a min amount set
        require(msg.value > 1e18, "Not enough funds");
    }
}