# Prerequisites 
1 Ensure aws-key is available to allow you to ssh into the machine
2 Personal profile is setup


# Setup
1. Download stackit from 
https://github.com/glassechidna/stackit

2. stackit up --stack-name FastAiVpc --template .\Vpc.yml --profile personal

3. stackit up --stack-name FastAiEc2Instance --template .\Ec2Instance.yml --profile personal

