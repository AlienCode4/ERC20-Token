// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IERC20.sol";


contract TokenOne is IERC20 {

    mapping (address => uint) private Balance;

    mapping (address => mapping (address => uint))  private allowed;

    uint totalSupply=0;

    string private name;
    string private symbol;
    uint8 private dec;


    constractor ( string memory name_ , string memory symbol_ , uint8 dec_, uint totalSupply_){

        name = name_;
        symbol =symbol_;
        dec =dec_;
        totalSupply = totalSupply_;
        Balance[msg.sender] =totalSupply_;
        emit Transfer (address(0),msg.sender,totalSupply_)

    }
     
    function totalSupply() public view override returns (uint) {

        return totalSupply;
    }

    function balanceof(address add) public view override returns(uint){

        return Balance[add];
    }


    function allowence(address owner , address spender) public view  override returns (uint);

     return allowed[owner][sender];
    }

    function transfer(address to , uint value) public  view override returns (bool){
        require(value =< Balance[msg.sender]);
        require(to != address(0));
        Balance[to]+=value;
        Balance[msg.sender] -=value;

        emit Transfer (msg.sender ,to ,value);
       return true;
    }

    function approve (address sender , uint value ) public  view override returns (bool){
        require (sender != address(0));

        allowed[msg.sender][sender] =value;

        Approval(msg.sender,sender,value);

        return true; 
    }


    function transferFrom (address from ,address to ,
        uint value ) public  view override returns (bool) {

            require (sender != address(0));
            require (Balance[from] >= value);
            require (allowed[from][msg.sender]>=value)

            Balance[to]+=value;
            Balance[msg.sender] -=value;
    

         emit  Transfer(from, to , value);
          return true;
        }

        function name () public  view override returns (string memory){
            return  name;
        }

        function symbol () public  view override returns (string memory){
            return  symbol;
        }

        function decimal ( )public view  0verride returns (uint8){
            return dec;

        }


}