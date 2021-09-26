// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Doctor {

    string public doctorName;
    address public doctorAddress;
    address[] public requestedEMR;
    address[] public approvedEMR;
    
    constructor () {
        doctorName = "";
        doctorAddress = msg.sender;
    }

    function setName(string memory doctorName_) public payable{
        doctorName = doctorName_;  
    }
    
    function addRequestedEMR(address EMRcontract_) public payable{
        requestedEMR.push(EMRcontract_);
    }
    
    function addApprovedEMR(address EMRcontract_) public payable{
        approvedEMR.push(EMRcontract_);
    }
    
    function getDoctorName() public view
            returns (string memory)
    {
        return doctorName;
    }
    
    function getDoctorAddress() public view
            returns (address)
    {
        return doctorAddress;
    }
    
    function getRequestedEMR() public view
            returns (address [] memory)
    {
        return requestedEMR;
    }
    
    function getApprovedEMR() public view
            returns (address [] memory)
    {
        return approvedEMR;
    }
}