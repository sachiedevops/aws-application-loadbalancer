# aws-application-loadbalancer
AWS project demonstrating an Application Load Balancer distributing HTTP traffic across two EC2 instances in different Availability Zones.
AWS Application Load Balancer with Two EC2 Instances

📌 Project Overview

This project demonstrates how to distribute incoming HTTP traffic across two Amazon EC2 instances using an AWS Application Load Balancer (ALB).

The two EC2 instances are deployed in different Availability Zones to improve availability.

🛠️ AWS Services Used

- Amazon VPC
- Public Subnets
- Internet Gateway
- Route Tables
- Amazon EC2
- Security Groups
- Target Groups
- Application Load Balancer (ALB)
- Apache Web Server
- EC2 User Data

🏗️ Architecture

Internet → Application Load Balancer → Target Group → EC2 Instance 1 / EC2 Instance 2

Both EC2 instances host a webpage displaying their hostname and private IP address.

⚙️ Implementation Steps

1. Created a VPC with CIDR block "10.0.0.0/16".
2. Created two public subnets in different Availability Zones.
3. Attached an Internet Gateway to the VPC.
4. Configured a route table with a default route to the Internet Gateway.
5. Launched two EC2 instances in separate subnets.
6. Used EC2 User Data to install and start Apache automatically.
7. Created a target group and registered both EC2 instances.
8. Created an internet-facing Application Load Balancer.
9. Configured an HTTP listener on port 80 to forward requests to the target group.
10. Tested the application using the ALB DNS name.

🧪 Testing

Accessed the Application Load Balancer using its DNS name in a web browser.

The webpage displayed the hostname and private IP address of the responding EC2 instance. Refreshing the page helped demonstrate traffic distribution across the registered instances.

🎯 Learning Outcomes

- VPC and subnet configuration
- Availability Zones and high availability
- Internet Gateway and route tables
- EC2 instance provisioning
- Security group configuration
- Automated software installation using User Data
- Target group health checks
- ALB listeners and traffic distribution

🧹 Cleanup

Delete unused AWS resources after testing to help avoid unnecessary charges.

👨‍💻 Author

GitHub: "sachiedevops" (https://github.com/sachiedevops)
