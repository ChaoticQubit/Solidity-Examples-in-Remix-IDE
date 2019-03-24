pragma solidity ^0.4.0;

contract ballot{
    struct voter{
        uint weight;
        bool voted;
        uint256 vote;
    }
    
    struct proposal{
        uint voteCount;
    }
    
    address chairperson;
    mapping(address => voter) voters;
    
    proposal[] proposals;
    
    function ballot(uint _numProposals) public{
        chairperson = msg.sender;
        voters[chairperson].weight = 2;
        proposals.length = _numProposals;
    }
    
    function register(address toVoter) public{
        if(msg.sender != chairperson || voters[toVoter].voted) return;
        voters[toVoter].weight = 1;
        voters[toVoter].voted = false;
    }
    
    function vote(uint toProposal) public{
        voter storage sender = voters[msg.sender];
        if (sender.voted || toProposal >= proposals.length) return;
        sender.voted = true;
        sender.vote = toProposal;
        proposals[toProposal].voteCount += sender.weight;
    }
    
    function winningProposal() public constant returns (uint8 _winningProposal) {
        uint256 winningVoteCount = 0;
        for (uint8 prop = 0; prop < proposals.length; prop++)
            if (proposals[prop].voteCount > winningVoteCount) {
                winningVoteCount = proposals[prop].voteCount;
                _winningProposal = prop;
            }
    }
} 