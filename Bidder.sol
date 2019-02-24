pragma solidity ^0.4.0; //Defines version of Solidity

contract bidder{    //Contract bidder initialised
    string public name;                              //State Variables defined
    uint public bidAmount = 20000;
    bool public eligible;
    uint constant minBid = 1000;                    //Constant State Vaiable (sets minimum bid to 1000)
    
    function setName(string nam) public{           //Sets the bidder name
        name = nam;
    }
    
    function setBidderAmount(uint amt) public{    //Sets Bidder amount
        bidAmount = amt;
    }
    
    function determineEligibilty() public{       //This will determine bidder's eligibility to bid
        if(bidAmount >= minBid){                 //Condition for eligibility
            eligible = true;                     //If eligible then set eligibility to true
        }else{
            eligible = false;                    //If not eligible then set eligibility to false
        }
    }
}
