// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errors_H {
    uint256 public FZ ;

    function setmyMoney(uint256 MyMoney) public {
        // Require is used to validate a condition
        require( MyMoney > 200, "Enter a value greater than 200");

        // Using assert() to ensure an internal condition
        //and to check the invariants
        assert( MyMoney < 3000);

        // Setting the value
        if( MyMoney == 1250){
            // Using revert() to revert the transaction
        revert("This operation is not allowed"); 
        }
       FZ =  MyMoney;
        
        
    }

    
}
