/**
 * Pizza delivery prompt example
 * run example by writing `node pizza.js` in your console
 */

 'use strict';
 const inquirer = require('inquirer');
 const data = require('../data/data');
 
 console.log(data);
 
//  const questions = [
//    {
//      type: 'confirm',
//      name: 'toBeDelivered',
//      message: 'Is this for delivery?',
//      default: false,
//    },
//    {
//      type: 'input',
//      name: 'phone',
//      message: "What's your phone number?",
//      validate(value) {
//        const pass = value.match(
//          /^([01]{1})?[-.\s]?\(?(\d{3})\)?[-.\s]?(\d{3})[-.\s]?(\d{4})\s?((?:#|ext\.?\s?|x\.?\s?){1}(?:\d+)?)?$/i
//        );
//        if (pass) {
//          return true;
//        }
 
//        return 'Please enter a valid phone number';
//      },
//    },
//    ,
//    {
//      type: 'input',
//      name: 'quantity',
//      message: 'How many do you need?',
//      validate(value) {
//        const valid = !isNaN(parseFloat(value));
//        return valid || 'Please enter a number';
//      },
//      filter: Number,
//    },
//    {
//      type: 'expand',
//      name: 'toppings',
//      message: 'What about the toppings?',
//      choices: [
//        {
//          key: 'p',
//          name: 'Pepperoni and cheese',
//          value: 'PepperoniCheese',
//        },
//        {
//          key: 'a',
//          name: 'All dressed',
//          value: 'alldressed',
//        },
//        {
//          key: 'w',
//          name: 'Hawaiian',
//          value: 'hawaiian',
//        },
//      ],
//    },
//    {
//      type: 'rawlist',
//      name: 'beverage',
//      message: 'You also get a free 2L beverage',
//      choices: ['Pepsi', '7up', 'Coke'],
//    },
//    {
//      type: 'input',
//      name: 'comments',
//      message: 'Any comments on your purchase experience?',
//      default: 'Nope, all good!',
//    },
//    {
//      type: 'list',
//      name: 'prize',
//      message: 'For leaving a comment, you get a freebie',
//      choices: ['cake', 'fries'],
//      when(answers) {
//        return answers.comments !== 'Nope, all good!';
//      },
//    },
//  ];
 
//  inquirer.prompt(questions).then((answers) => {
//    console.log('\nOrder receipt:');
//    console.log(JSON.stringify(answers, null, '  '));
//  });

// // var prompt = require('prompt');

// // //
// // // Start the prompt
// // //
// // prompt.start();

// // var properties = {
// //   properties: {
// //     animal: {
// //       description: 'Enter an animal',
// //       default: 'dog',
// //       pattern: /dog|cat/
// //     },
// //     sound: {
// //       description: 'What sound does this animal make?',
// //       conform: function (value) {
// //         var animal = prompt.history(0).value;

// //         return animal === 'dog' && value === 'woof'
// //           || animal === 'cat' && value === 'meow';
// //       }
// //     }
// //   }
// // }

// // //
// // // Get two properties from the user
// // //
// // prompt.get(properties, function (err, result) {
// //   //
// //   // Log the results.
// //   //
// //   console.log('Command-line input received:');
// //   console.log('  animal: ' + result.animal);
// //   console.log('  sound: ' + result.sound);
// // });