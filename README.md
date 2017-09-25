# Cloudera Data Science Workbench Installation from scratch on AWS


## 1. Introduction

Cloudera Data Science and Engineering is the comprehensive offering for exploratory data science and machine learning at scale. It lives where your datas lives, on-premise and across public clouds. Cloudera gives data science users better access to Hadoop data with familiar and performant tools that address every stage of the modern predictive analytics workflow.  

This Enablement Session will focus on creating a fully functionnal Cloudera Data Science Workbench service based on AWS Public Cloud. The Cloudera Data Engineering cluster will be created through Cloudera Director. 

The Operations, Industrialisation and Production/Security readiness will also be covered.


## 2. Pre-requisites

### 1. AWS Account / Quotas

Please make sur with your AWS administrator that you have an AWS account (with credentials) and sufficient quotas.
We will use different Virtual Machine sizing for the different environments DEV / STG / PRD.  

The minimum requirement are:  
* 1 Virtual Private Cloud (VPC)  
* 1 Security Group  
* 7 Instances (from t2.medium to t2.2xlarge)  
* 18 vCPU total  
* 68 GB RAM total  
* 300 GB DISK (EBS / GP2) total for OS  
* 1.5 TB  DISK (EBS / GP2) total for Data Store

### 2. AWS Command Line Interface installed (CLI)

Please got through this tutorial to correctly install your AWS CLI environment.  
[Installing the AWS Command Line Interface](http://docs.aws.amazon.com/cli/latest/userguide/installing.html) 

### 3. Knowledge on SSH with Keypairs into a linux terminal

During the session, we will provide a keypairs to ease the Cloudera Staff debuggability. You could find private / public keypairs (**cdsw-admin** / **cdsw-admin.pub**) under this link:  
[Cloudera Data Science Workbench Installation from scratch on AWS - Github](https://github.com/heibalvin/Cloudera-Data-Science-Workbench-Installation-from-scratch-on-AWS)

**Special attention for windows users**, please make sure sure that you have:  
* Installed putty. [Putty installation link](https://www.chiark.greenend.org.uk/~sgtatham/putty/)  
* And converted the **cdsw-admin** private key. [Putty user guide](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/putty.html#putty-private-key)

## 3. Start the Enablement Session

Please refer to the CDSW-Installation-from-scratch-on-AWS.pdf
