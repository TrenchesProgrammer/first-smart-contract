//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;
import './SimpleStorage.sol';
contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
    function createSimpleStorageContract( ) public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    function sfStore (uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        SimpleStorage(simpleStorageArray[_simpleStorageIndex]).store(_simpleStorageNumber);
    }
    function sfGet (uint256 _simpleStorageIndex) public view returns(uint256){
        return SimpleStorage(simpleStorageArray[_simpleStorageIndex]).retrieve();
    }
}