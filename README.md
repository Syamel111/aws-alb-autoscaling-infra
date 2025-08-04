````md
# AWS ALB + EC2 Auto Scaling Infrastructure (Terraform Project)

This project provisions a **highly available, scalable web application infrastructure** using Terraform and AWS services.
It simulates a real-world production environment with EC2 instances behind an Application Load Balancer
(ALB) and managed through an Auto Scaling Group.

---

## 🧰 Services Used

- **Amazon VPC** — with public subnets, route tables, IGW
- **EC2 Auto Scaling Group** — launches Ubuntu servers with NGINX installed via `user_data.sh`
- **Launch Template** — defines EC2 configuration
- **Application Load Balancer (ALB)** — distributes traffic across EC2s
- **Security Groups** — least privilege for ALB and EC2
- **Terraform** — full infrastructure-as-code
- **Cloud-Init** — installs and starts NGINX on launch

---

## 📁 Project Structure

```bash
lesson5-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── vpc.tf
├── security_groups.tf
├── alb.tf
├── ec2_autoscaling.tf
├── userdata.sh
├── terraform.tfvars         # (ignored by .gitignore)
└── .gitignore
````

---

## 🚀 Deployment Steps

1. **Initialize Terraform:**

```bash
terraform init
```

2. **Preview the Plan:**

```bash
terraform plan
```

3. **Deploy Infrastructure:**

```bash
terraform apply
```

4. **Test the Load Balancer:**

```bash
curl http://<alb_dns_name>
```

Expected output:

```html
<h1>Hello from ip-10-0-x-x</h1>
```

---

## 🧹 Clean Up Resources

```bash
terraform destroy
```

---

## ✅ Outcome

* ✅ ALB distributes traffic to multiple EC2 instances
* ✅ NGINX auto-installs and serves HTML
* ✅ Scalable, secure, production-style infra
* ✅ Free Tier–friendly setup

---

## 📸 Example Output

![example](https://raw.githubusercontent.com/Syamel111/aws-alb-autoscaling-infra/main/screenshot.png)

> *(Optional: upload screenshot to GitHub and it will auto-preview here)*

---

## 🔒 Security

* `.gitignore` is configured to avoid committing Terraform state and secrets
* No secrets or keys are hardcoded
* Public access is limited to HTTP only

---

## 📌 Author

Built by [Syamel Amri](https://github.com/Syamel111) as part of a 2-month AWS DevOps Bootcamp.

```
