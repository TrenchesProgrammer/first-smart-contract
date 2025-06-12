//SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract SimpleStorage{
    struct People {
        string Name;
        uint256 FavoriteNumber;
    }
    uint256 favoriteNumber;
    function store (uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    function retrieve () view public returns(uint256){
        return favoriteNumber;
    }
    mapping (string => uint256) public nameToFavoriteNumber;
    People[] public people ;
    function addPerson (string memory name, uint256 _favoriteNumber) public {
        people.push(People(name,_favoriteNumber));
        nameToFavoriteNumber [name] = _favoriteNumber;
    }
}