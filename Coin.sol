pragma solidity ^0.4.0;

contract minter{
    address public mint;
    mapping(address => uint) public balances;
    
    event sent(address from, address to, uint amount);
    
    function minter() public{
        mint = msg.sender;
    }
    
    function minted(address receiver, uint amount) public{
        if(msg.sender != mint) return;
        balances[receiver] += amount;
    }
    
    function send(address receiver, uint amount) public{
        if(balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        sent(msg.sender, receiver, amount);
    }
}