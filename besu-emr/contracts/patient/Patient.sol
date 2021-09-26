// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Patient {

    string public patientName;
    address public patientAddress;
    address[] public EMRAddresses;
    
    constructor (string memory _patientName) {
        patientName = _patientName;
        patientAddress = msg.sender;
    }

    function setName(string memory patientName_) public payable{
        patientName = patientName_; 
    }
    
    function addEMR(address EMRcontract_) public payable{
        EMRAddresses.push(EMRcontract_);
    }
    
    function getPatientName() public view
            returns (string memory)
    {
        return patientName;
    }
    
    function getPatientAddress() public view
            returns (address)
    {
        return patientAddress;
    }
    
    function getAllEMR() public view
            returns (address [] memory)
    {
        return EMRAddresses;
    } 
}