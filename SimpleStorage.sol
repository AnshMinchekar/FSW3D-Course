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
    //Additionally, adding a public specifier retrieves the value.

    //STRUCT
    struct People{
        string name;
        uint256 favNumber;
    }

    People public person = People({
        name:"Ansh",
        favNumber: 25
    });

    function store(uint256 _favNumber) public{
        favNumber = _favNumber; //Variables follow block level scope.
        retrieve(); //This function call will cost gas
        
    }

    //Any time you change something on-chain (i.e, deploying a contract or fiddling with values, it happens in a transaction)
    //A more computationally expensive function will require more gas

    function retrieve() public view returns(uint256){
        //view & pure functions do not require any gas since they're not updating the state of the blockchain
        //view functions are just reading data off the blockchain 
        //While pure functions do not allow to even read data off blockchain. These may be used for a function that's being called again and again.
        return favNumber;
    }

    function add() public pure returns(uint256){
        return(1+1);
    }
}
