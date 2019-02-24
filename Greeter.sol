pragma solidity ^0.4.0;

contract greeter{
    string public Name;
    string public hellokey = "Hello ";
    
    function greeter() public{
        Name = "Arman";
    }
    
    function set(string greet) public {
        Name = greet;
    }
    
    function hello() constant public returns (string, string){
        return (hellokey, Name);
       
    }
}