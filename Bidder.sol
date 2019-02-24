pragma solidity ^0.4.0;

contract bidder{
    string public name;
    uint public bidAmount = 20000;
    bool public eligible;
    uint constant minBid = 1000;
    
    function setName(string nam) public{
        name = nam;
    }
    
    function setBidderAmount(uint amt) public{
        bidAmount = amt;
    }
    
    function determineEligibilty() public{
        if(bidAmount >= minBid){
            eligible = true;
        }else{
            eligible = false;
        }
    }
}