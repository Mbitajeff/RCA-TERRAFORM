## Terraform IaC Tool

### Deploy a three-tier infrastructure on AWS using Terraform

#### Steps
- Clone the git repository

``` git clone https://github.com/rcacfs/bootcamp.git```

- Get into the project root directory

``` cd bootcamp ```

- Go to general_variables.tf file, edit the region to your liking
Example regions are as shown below:
```
us-east-1
us-east-2
eu-west-1
eu-west-2
ap-south-1
```

- Navigate to vpc_variables.tf, you will see there is a variable for cidr block i.e 10.0, \
but this is just a part of a cidr block, this defines how all you cidr blocks will look like. \
In the case above, they will all have the 10.0 at the beginning. \
you can keep the default cidr block range or change it.

- Navigate to aws_services_variables.tf.\
 This file contains some services that we will use in the infrastructure. \
 It contains the load balancer variables, and database variables

- On networkingtags.tf edit the values

- Starting from the networking services, navigate to vpc.tf \
edit the file with your own values and cidr range.

- On subnets.tf file, edit the available subnets and you can add other subnets depending with the kind of architecture you have.

##### Security on the subnet level
- navigate to nacls.tf file. On this file you can edit the ingress and egress rules of each subnet.\
 Allow traffic in and out of each subnet.

##### Route table association
- navigate to route_tables.tf file, for each subnet make associations. \
NOTE the difference between public and private subnets.

##### App and Web Servers
- navigate to web_app.tf. In this file you will find three servers, \
```
bastion server
web server
app server
```

you can add more servers using your own values.

##### PostgreSQL Database
- navigate to postgresql.tf, edit the database values with your own

##### Application Load Balancer
- navigate to web_app_alb.tf, create an application load balancer with listeners and target groups

##### Servers and Database Security
- navigate to securitygroups.tf, create a security group for each server and the database.




