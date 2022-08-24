// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Learn {
    struct User {
        string name;
        uint age;
    }

    User[] public users;


    function createUser(string memory _name, uint _age) public {
        users.push(User({
                name: _name,
                age: _age
            }));
    }

    function updateUser(string memory _name, uint _age, uint index) public{
        users[index] = User({
                name: _name,
                age: _age
            });
    }


}
