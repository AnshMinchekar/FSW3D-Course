//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

//every smart contract has an address 
contract SimpleStorage{ 
    //Data Types in Solidity
    //uint: Unsigned Integer (Can only be positive values)
    //int: Integer (Can have both +ve & -ve values)
    //bool: Boolean values
    //string (Are secretly bytes but only for text characters)
    //address: Can hold wallet addresses 
    //bytes: Can hold max. 32 byte data

    uint256 public favNumber;
    //Defaults to null or 0 when undefined 
    //By default the visibility is set to private.
    //There are 4 visibility specifiers: Public, Private, External & Internal

    function store(uint256 _favNumber) public{
        favNumber = _favNumber;
    }

    //Any time you change something on-chain (i.e, deploying a contract or fiddling with values, it happens in a transaction)
}
