pragma solidity ^0.4.0;

contract stateTrans{
    enum Stage{init, Reg, Vote, Done}
    Stage public stage;
    uint startTime;
    uint public timeNow;
    
    function stateTrans() public{
        stage = Stage.init;
        startTime = now;
    }
    
    function advanceState() public{
        timeNow = now;
        if(timeNow > (startTime + 10 seconds)){
            startTime = timeNow;
            if(stage == Stage.init){
                stage = Stage.Reg;
                return;
            }
            if(stage == Stage.Reg){
                stage = Stage.Vote;
                return;
            }
            if(stage == Stage.Vote){
                stage = Stage.Done;
                return;
            }
            return;
        }
    }
}