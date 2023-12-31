// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

interface IERC20 {

    function totalSupply() external view returns (uint) ;

    function balanceof(address add) external view returns(uint);

    function allowence(address owner , address spender) external view  returns (uint);

    function transfer(address to , uint value) external view returns (bool);

    function approve (address sender , uint value ) external view returns (bool);

    function transferFrom (address from ,address to ,
         uint value ) external view returns (bool);

   function name () external view returns (string memory);      
   function symbol () external view returns (string memory);      
   function decimal () external view returns (uint8);      


   event Transfer (

    address indexed from,
    address  indexed to,
    uint value
    );


    event Approval (

        address  indexed owner,
        address  indexed spender,
        uint value
        );
        
    
}