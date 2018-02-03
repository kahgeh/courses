# Benefit
Let's you run GPU spot instance at a max price of 0.90 per hour ( same as demand price ). Recently noticed that it hovers around 0.46 per hour, the spot price is listed here :

  https://aws.amazon.com/ec2/spot/pricing/

# Downside
 You can only reboot and terminate the instance, you can't stop it and spin it up later on. So you'll need to save your work somewhere and modify the userdata section of the Ec2Instance.yml to initialize. 
 

# Prerequisites
1. Ensure you can start up a GPU instance ( may be to file an case requesting for access if you don't already have it )
1 Ensure aws-key is available to allow you to ssh into the machine
2 Personal profile is setup


# Setup
1. Download stackit from 
https://github.com/glassechidna/stackit

2. stackit up --stack-name FastAiVpc --template .\Vpc.yml --profile personal

3. stackit up --stack-name FastAiEc2Instance --template .\Ec2Instance.yml --profile personal

4. Connect to the instance through ssh

5. Reboot the ec2 instance once it's up ( updates requires system restart )

6. Run `tmux`, split pane ( `ctrl+b` `%` ) 

7. Run `jupyter notebook` in one of the pane ( switch between the panes `ctrl+b` `q` `<pane number(0 or 1)>`) 

