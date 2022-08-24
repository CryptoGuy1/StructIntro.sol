// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Loop{
    function stone() public {
        for (uint256 i = 0; i < 20; i++){
            if (i == 3){
                continue;
                break;
            }
        }
        uint256 rik = 5;
        while (rik > 1){
            rik++;
        }
    }
}

contract Bean{
    uint256 pie = 5;
    address owner;
    constructor() {
        owner = msg.sender;

    }
    function text() public {
        if(owner != msg.sender){
            revert("not owner");

        }

        }
         modifier checkOwner() {
        if(msg.sender != owner) {
            revert("not owner");
            _;
            
        }
    }

        function changeOwner(address newOwner) external checkOwner{
            owner = newOwner;
            
    }
   
}

