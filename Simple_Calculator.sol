pragma solidity ^0.4.0;

contract operations{
    uint value;
    
    function set(uint x) public{
        value = x;
    }
    
    function get() public constant returns(uint){
        return value;
    }
    
    function incre(uint n) public{
        value += n;
    }
    
    function decre(uint n) public{
        value -= n;
    }
    
    function multi(uint n) public{
        value = value * n;
    }
    
    function divi(uint n) public{
        value = value / n;
    }
}