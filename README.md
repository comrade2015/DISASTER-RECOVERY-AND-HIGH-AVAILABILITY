# DISASTER-RECOVERY-AND-HIGH-AVAILABILITY

Project Overview

This project objective is to illustrate a disaster recovery (DR) setup for an application to ensure high availability (HA) and fault tolerance. It includes deployment across multiple AWS regions, automated backup strategies, and scalable architecture using AWS services.

FEATURES:
- Route 53 for failover:
  Utilize Route 53 to implement DNS failover between primary and secondary regions.
- Multi-Region Deployment
  Deploy the application in two AWS regions to ensure minimal downtime during disasters.
- Automated Snapshots and Backups
  Automate backups for databases and file storage using AWS services like S3.
- Scalable Architecture
  Use an Auto Scaling Group and Application Load Balancer to handle dynamic workloads efficiently.

Prerequisites:
- An AWS account with necessary permissions to create and manage resources.
- Basic knowledge of AWS services like EC2, RDS, S3, Route 53, and IAM.
- AWS CLI and Terraform (or CloudFormation) installed for infrastructure as code.

Setup:
- Use Terraform to:
- Set up VPCs, subnets, and security groups.
- Deploy EC2 instances for application servers.
- Set up RDS for the database and S3 for file storage.

Application Deployment:
- Deploy the application in both primary and secondary regions.
- Ensure both deployments are identical to maintain consistency.

Route 53 Configuration:
- Create a Route 53 Hosted zone.
- Configure health checks for both regions.
- Set up DNS failover routing policy to direct traffic to the healthy region.

Scalable Architecture:
- Configure an Auto Scaling Group for EC2 instances.
- Attach an Application Load Balancer to distribute traffic among healthy instances.

Conclusion:
This project provides a robust disaster recovery and high availability solution for a simple application. By leveraging AWS's scalable and reliable infrastructure, you can minimize downtime and ensure business continuity during disasters.

