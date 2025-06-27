# GCP Fundamentals: Compute, Storage & Networking – Day 1

**Name:** Shreya Awasthi


Today, I explored some of the core services in Google Cloud Platform (GCP).  
I created basic cloud infrastructure using the GCP Console. Here's what I did:

# Tasks Completed

1. **Created a Virtual Machine (VM):**
   - Used Compute Engine to create a VM instance.
   - Selected a region and zone.
   - Allowed HTTP traffic so it can be accessed via browser if needed.

2. **Created a Cloud Storage Bucket and Uploaded a File:**
   - Made a new bucket with a unique name.
   - Uploaded a sample text file into the bucket.

3. **Set Up a Custom VPC with Subnets:**
   - Created a custom Virtual Private Cloud (VPC).
   - Added two subnets in different regions to organize and control the network setup better.


# How the Components Work Together (Mini Architecture)

In this setup, I’ve used three main parts of GCP: a Virtual Machine (VM), a Cloud Storage bucket, and a VPC with subnets.

Here’s how they all connect:

The VM is like a computer in the cloud. I can run applications or scripts on it.

This VM is placed inside the VPC, which is like a private network. It keeps the VM safe and allows me to control how it connects to other resources or the internet.

I created custom subnets inside the VPC to divide the network into smaller sections. This helps organize things better, and I can control what goes where.

The Cloud Storage bucket is used to keep files. For example, I uploaded a sample file that can be used by the VM.

If I want, my VM can access the file from the storage bucket—either to read or to process it. This helps when apps running on the VM need to use or store data.

So basically:
The VM runs inside a secure network (VPC), can talk to other parts of the cloud, and can use Cloud Storage to access or save data. All these components are set up in a way that they can safely and smoothly work together.

# Core Concept Questions

# 1. Why would a startup choose GCP over other providers for compute and storage?

- GCP offers free credits for beginners and startups.
- It is easy to use and has a clean interface.
- Pricing is flexible and often cheaper for small businesses.
- It comes with strong security and Google-backed performance.
- It also supports scaling quickly as the startup grows.

# 2. What are the advantages of using VPCs over default networking?

- You get more control over how your resources connect with each other.
- You can set your own IP ranges and firewall rules.
- It’s more secure and allows better isolation of services.
- You can organize resources by creating subnets in different regions.

# 3. How do GCP regions and zones impact performance and availability in global apps?

- Choosing the right **region** helps reduce delay for users in that area.
- **Zones** help in distributing services so that even if one zone goes down, the app keeps working.
- Using multiple regions and zones makes apps faster and more reliable worldwide.

# Day2
# Core Concept Questions
**Why is it dangerous to assign Editor role to all users in a production environment?**
Giving everyone the Editor role is risky because it gives them permission to change, delete, or create almost anything in the project. Even by mistake, a user could stop services, break resources, or cause data loss. In production, this can lead to serious downtime or security issues. Instead, it's safer to give each person only the permissions they really need.

**How do service accounts differ from user accounts in managing backend services?**
A user account belongs to a real person and is used for things like logging in to the console. A service account is used by software or virtual machines (VMs) to access other GCP services, such as reading from a storage bucket or writing logs, without requiring a person to log in. Service accounts help automate backend tasks securely.

**What practices help secure IAM in a multi-project GCP setup?**
To keep IAM safe across many projects:
Use the principle of least privilege: give only the permissions needed.
Create custom roles for fine control.
Use folders and organisation policies to manage permissions from the top down.
Avoid using broad roles like Editor or Owner.
Regularly review IAM policies to check for over-permissioned accounts.
Use separate service accounts for different apps or environments.

# IAM Policy
In this exercise, IAM policies were used to control who can access what in the GCP project. The goal was to make sure that each user or service only had the permissions they truly needed, nothing more.

IAM policies work by linking a role to a principal (like a user or service account). When assigning a role, the policy gives that person or service certain permissions to interact with Google Cloud resources.

For example:
I created a custom role called TestRoleExercise2, which only has the permission to view Compute Engine instances. This role was then assigned to a service account that needs to read VM information, but not change anything.
I also assigned the basic Viewer role to a test user. This lets them view resources across the project, but not make any changes.
By applying these policies:
- I followed the principle of least privilege, which helps keep the environment secure.
- I avoided using broad roles like Editor or Owner, as they give too much access.
- Each role was assigned a clear purpose, either for viewing only or for a specific task.

In short, IAM policies were used to make sure that everyone and everything only got access to exactly what was needed, which is a key security practice in GCP.

# Assigning IAM Roles/Permissions
To assign permissions, I went to IAM, then selected Grant Access, selected the project, and added a new principal. This principal could be either a Google account (such as a Gmail ID) or a GCP-managed identity, like a service account.

After adding the principal, I selected a role by navigating to the "Basic" category and choosing the Viewer role.
The Viewer role was selected because it allows the user to see project resources but not make any changes. This ensures that users can monitor or check configurations without the ability to modify, delete, or manage permissions, helping to keep the environment secure.

Additionally, I created a custom role named TestRoleExercise2, which includes only the compute.instances.list permission. This custom role was assigned to a service account, allowing it only to view Compute Engine instances, not alter them. This is useful for monitoring or reporting tasks performed by backend services.

These roles were carefully selected to minimise access while still allowing necessary operations. I avoided broad roles like Editor or Owner to follow the principle of least privilege, giving only the exact access that was required, nothing more.

