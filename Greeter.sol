pragma solidity ^0.4.0; //Defines the version of solidity

contract greeter{       //Contract Greeter is defined
    string public Name;                  //Data Variable or State variable defined as public 
    string public hellokey = "Hello ";   //Data Variable or State variable assigned a value
    
    function greeter() public{           //Function greeter is a constructor funtion
        Name = "Arman";
    }
    
    function set(string greet) public {   //Function set will set the value in greet in the name variable
        Name = greet;
    }
    
    function hello() constant public returns (string, string){    //This will return "Hello Arman"
        return (hellokey, Name);
       
    }
}
