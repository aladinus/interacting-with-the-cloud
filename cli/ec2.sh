need to test

aws ec2 describe-instances


aws ec2 run-instances \
  --image-id ami-0abcd1234efgh5678 \
  --instance-type t2.micro \
  --count 1 \
  --key-name vm-key \
  --security-group-ids SGID  \
  --subnet-id SUBNET  \
  --associate-public-ip-address \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=MyFirstInstance}]"



aws ec2 terminate-instances --instance-ids <instance-id> [--region <region>]

