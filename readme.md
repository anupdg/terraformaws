# Terraform script to create VPC and some related resources
This codebase is targeted for implementing "[Scenario 2](https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Scenario2.html): VPC with Public and Private Subnets". This is the first part where we will create VPC and its related resources needed to create VPC skeleton.

Does the following-

* VPC
* Private subnet
* Public subnet
* Internet gateway
* Route table
* Route table association for internet gateway with public subnet
* Public security group
* Private security group

## Rules for public security group
As I am from windows background, the first step that I can consider is to do RDP access to public instances and the access internet from public instance. For this reason, I am adding-
* inbound RDP access with port 3389
* outbound internet access with port 80 and 443
* outbound RDP access with port 3389 (this rule need to connect private servers from public instance)
You can go ahead and implement necessary inbound and outbound rules e.g. you may want to SSH and use post 22 

## Rules for private security group
Next step what I can consider is to do RDP access to private instances from public instance. For this reason, I am adding-
* inbound RDP access with port 3389




