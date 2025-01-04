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
