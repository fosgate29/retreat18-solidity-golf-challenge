pragma solidity 0.4.18;

contract Luizsoaresgas {
    address owner;
    address receiver;
    uint blocknumber;
    uint8 constant val = 105;

    function Luizsoaresgas(address r) public {
        owner    = msg.sender; 
        receiver = r;
    }

    function deposit() public payable{
        assert(msg.sender==owner);
    }

    function disburse() public {
        uint t = blocknumber;
        if(block.number - t > val || t==0){
            blocknumber =  block.number; 
            receiver.transfer( (t !=0 ? this.balance * ( t % 100 ) : this.balance * 5) / 100 );
        }
        else {
            revert();
        }
    }
}