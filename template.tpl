___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Boolean conditions",
  "categories": ["PERSONALIZATION", "UTILITY", "TAG_MANAGEMENT"],
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Boolean condition",
  "description": "Returns a Boolean value",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "inputVar",
    "displayName": "Input variable",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true
  },
  {
    "type": "SELECT",
    "name": "condition",
    "selectItems": [
      {
        "value": "equals",
        "displayValue": "equals"
      },
      {
        "value": "does not equal",
        "displayValue": "does not equal"
      },
      {
        "value": "contains",
        "displayValue": "contains"
      },
      {
        "value": "does not contain",
        "displayValue": "does not contain"
      },
      {
        "value": "does not start with",
        "displayValue": "does not start with"
      },
      {
        "value": "starts with",
        "displayValue": "starts with"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "defaultValue": "equals"
  },
  {
    "type": "TEXT",
    "name": "inputUsr",
    "displayName": "",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

//APIs
const log = require('logToConsole');

//Const variables
const inputA = data.inputVar;
const inputB = data.inputUsr;
const condition = data.condition;


if (condition === 'equals') {
  return inputA === inputB;
} else if (condition === 'does not equal') {
  return inputA !== inputB;
} else if (condition === 'contains') {
  return inputA.indexOf(inputB) !== -1;
} else if (condition === 'does not contain') {
  return inputA.indexOf(inputB) === -1;
} else if (condition === 'does not start with') {
  return inputA.indexOf(inputB) !== 0;
} else if (condition === 'starts with') {
  return inputA.indexOf(inputB) === 0;
}

log('data =', data);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 26/7/2022, 18:51:40


