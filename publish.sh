#!/bin/bash

if [ $# -eq 0 ]
    then
        echo "Missing npmjs.org OTP for publishing"
        exit 1
fi

npm publish --@formcentric:registry=https://registry.npmjs.org --otp=$1

npm publish --@formcentric:registry=https://maven.monday-consulting.com/artifactory/api/npm/formcentric-npm-releases/
