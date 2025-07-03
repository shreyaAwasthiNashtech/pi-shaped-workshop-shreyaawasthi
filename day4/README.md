# Terraform Modularization with Remote State & Workspaces

## 🧩 Project Structure

- `modules/vm`: Creates VM instance
- `modules/storage`: Creates GCS bucket
- `backend.tf`: Uses GCS remote backend
- `envs/`: Holds `dev` and `staging` config
- `main.tf`: Calls both modules
- `outputs.tf`: Shows public IP and bucket URL

## 🛠️ Workspace Usage

```bash
terraform workspace new dev
terraform workspace new staging
terraform workspace select dev
terraform apply -var-file="envs/dev.tfvars"
terraform workspace select staging
terraform apply -var-file="envs/staging.tfvars"
```

## ✅ Benefits of Using Modules

- Reusable Terraform logic for VMs and buckets
- Better organization and team collaboration
- Consistency across microservices infrastructure

## ✅ Why Remote State

- Keeps state safe and accessible across teams
- Prevents accidental overwrites
- Enables collaboration with backend locking

## ✅ How Workspaces Help

- Use same code for multiple environments
- Each environment keeps its own state
- No need for multiple code copies or folders
