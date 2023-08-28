// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;



contract MyToken {

    // public variables here
    string public tokenName ="HARSHANT";
    string public tokenAbbreviation="HARSH";
    uint public totalSupply=4000;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address mintAddress, uint  mintValue)public {
      totalSupply += mintValue;
      balance[mintAddress] += mintValue;
   }
    // burn function
   function burn(address burnAddress, uint burnValue)public {
      if(balance[burnAddress]>= burnValue){
        totalSupply -= burnValue;
        balance[burnAddress] -= burnValue;
      }
     }
  }