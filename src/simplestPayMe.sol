// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract PayMe {


    struct Employee {
        string preferredName;
        address payable walletAddress;
    }

    string public s_employeeName;
    address public s_employeeWallet;

    Employee public employee;
    Employee[] public employees;

    constructor(
        string memory employeeName,
        address employeeWallet
    ) {
        s_employeeName = employeeName;
        s_employeeWallet = employeeWallet;
        
    }

    function pushEmployee() external payable {
        employees.push(Employee(s_employeeName, payable(s_employeeWallet)));
    }
    

    // employees.push(Employee(s_employeeName, payable(s_employeeWallet)));

  
}