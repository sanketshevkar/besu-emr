'use strict';
const inquirer = require('inquirer');
const data = require('../data/data');

const hospital = []; 
data.map((entry)=>{
  hospital.push(entry.hospitalName);
});

let selectedHospital = "";
let selectedPatient = "";
let selectedDoctor = "";
let selectedEMR = "";

async function main(){
    
    const questions = [
        {
            type: 'list',
            name: 'hospital',
            message: 'Please a select your hospital',
            choices: hospital,
            filter(val) {
              return val.toLowerCase();
            },
          },
        {
            type: 'list',
            name: 'operation',
            message: 'Please a select what you want to do:',
            choices: [
                'Add patient', 
                'Add doctor',
                'Add EMR',
                'Get list of patients',
                'Get list of doctors'
            ],
            filter(val) {
              return val.toLowerCase();
            },
          }
    ]
}
  
  if (require.main === module) {
    main();
  }
  
  module.exports = exports = main