// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract EX1 {
    bool public b;
    uint public x;

    constructor(){
        b = true;
    }

    function get_b() public view returns (bool){
        return b;
    }

// EX2

    function addToX2(uint y) public {
        x += y;
    }

//EX 3

    modifier increase(uint value) {
        x += value;
        _;
    }

    function increaseX(uint value) public increase(value) {
    }


// EX4

    function returnTwo() public pure returns(int oneVar, bool twoVar) {
        oneVar = -2;
        twoVar = true;
    }
}