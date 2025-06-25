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

