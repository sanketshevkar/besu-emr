// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EMR {
    
    uint public EMRId;
    string public encryptedEMR;
    string public encryptedCID;
    string public patient;
    address public hospital;
    string[] public approvedDoctors;
    
    constructor () {
        EMRId = 0;
        encryptedEMR = "";
        encryptedCID = "";
        patient = "";
        hospital = msg.sender;
    }

    function instantiate(uint _EMRId, string memory _encryptedEMR, string memory _encryptedCID, string memory _patient) public payable{
        EMRId = _EMRId;
        encryptedEMR = _encryptedEMR;
        encryptedCID = _encryptedCID;
        patient = _patient;
    }
    
    function approveAccess(string memory approvedDoctor_) public payable{
        approvedDoctors.push(approvedDoctor_);
    }
    
    // function revokeAccess(string memory revokeDoctor_) public payable{
    //     for (uint i = 0; i < approvedDoctors.length; i++) {
    //         if (approvedDoctors[i] == revokeDoctor_) {
    //             delete approvedDoctors[i];
    //         }
    //     }
    // }

    function getEMR() public view
            returns (uint _EMRId, string memory _encryptedEMR, string memory _encryptedCID)
    {
        return (EMRId, encryptedEMR, encryptedCID);
    } 

}