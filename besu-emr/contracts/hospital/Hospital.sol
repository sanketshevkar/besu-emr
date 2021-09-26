// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Hospital {

    string public hospitalName;
    address public hospitalAddress;
    address[] public patients;
    address[] public doctors;
    
    constructor () {
        hospitalName = " ";
        hospitalAddress = msg.sender;
    }
    
    function setName(string memory hospitalName_) public payable{
        hospitalName = hospitalName_;
        
    }
    
    function addPatient(address patientAddress_) public payable{
        patients.push(patientAddress_);
        
    }
    
    function addDoctor(address doctorAddress_) public payable{
        doctors.push(doctorAddress_);
        
    }
    
    function getHospitalName() public view
            returns (string memory)
    {
        return hospitalName;
    }
    
    function getHospitalAddress() public view
            returns (address)
    {
        return hospitalAddress;
    }
    
    function getAllPatients() public view
            returns (address [] memory)
    {
        return patients;
    }
    
    function getAllDoctors() public view
            returns (address [] memory)
    {
        return doctors;
    }
}