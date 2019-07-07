#!/bin/bash

set -e

aws cloudformation package \
    --template-file=cloudformation.template.yml \
    --s3-bucket=prowe-deploy-bucket \
    --output-template-file=cloudformation.transformed.yml

aws cloudformation deploy \
    --template-file=cloudformation.transformed.yml \
    --stack-name=prowe-graphql-sandbox