pragma solidity ^0.4.0;   //Defines version of Solidity

contract operations{      //Contract operations initialised
    uint value;           //State Variable
    
    function set(uint x) public{    //Sets user value to value data variable
        value = x;
    }
    
    function get() public constant returns(uint){     //gets the data inside value variable
        return value;
    }
    
    function incre(uint n) public{           //Increments value by a specific no given by the user
        value += n;
    }
    
    function decre(uint n) public{          //Decrements value by a specific no given by the user
        value -= n;
    }
    
    function multi(uint n) public{          //Multiplies value by a specific no given by the user
        value = value * n;
    }
    
    function divi(uint n) public{          //Divides value by a specific no given by the user
        value = value / n;
    }
}
