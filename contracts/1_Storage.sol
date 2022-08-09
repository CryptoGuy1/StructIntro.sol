// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "hardhat/console.sol";

contract simpleStore{

    address s_owner;
    constructor() {
        s_owner = msg.sender;
    }

    uint256 public s_num;
    string public s_alpha;

    modifier checkOwner() {
        require(msg.sender == s_owner);
        _;
    }

    function store(uint256 _num, string memory _alpha) public checkOwner{
        s_alpha = _alpha;

        if(_num == 1) {
            // console.log("Yep 1");
        s_num = _num;
        } else {
            console.log("e34");
        }
    }

    uint256 public s_time =  block.timestamp;
    uint256 public s_bumber = block.number;


}