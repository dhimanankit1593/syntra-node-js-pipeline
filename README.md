Assignment Document
🚀 End-to-End DevOps Project: Node.js Deployment & Monitoring on AWS
I recently completed an end-to-end DevOps implementation where I designed, deployed, automated, and monitored a Node.js application using industry-standard tools.
🏗️ Project Overview
The objective was to deploy the same Node.js application in multiple ways and monitor it centrally to understand infrastructure vs container vs CI/CD-based deployments.
⚙️ Application Deployment Scenarios
✅ Node.js on Linux Host
Application running directly on EC2
Port: 8000
✅ Node.js in Docker Container
Containerized application using Docker
Port: 8001
✅ Node.js via Jenkins CI/CD Pipeline
Jenkins builds Docker image on every Git push
Automated deployment using Docker
Port: 8002
📊 Monitoring & Observability
Implemented a full monitoring stack using:
Prometheus – metrics collection
Node Exporter – Linux server metrics
cAdvisor – Docker container metrics
Grafana – visualization & dashboards
📈 Monitored metrics include:
CPU, Memory, Disk, Network (Linux)
Container CPU & Memory usage
Node.js application metrics (/metrics)
Service availability & performance
🧱 Infrastructure as Code (IaC)
EC2 provisioned using Terraform
Terraform executed from a separate local Linux machine
Infrastructure fully reproducible & version-controlled
🔧 Tools & Technologies Used
AWS EC2
Terraform
Linux
Node.js
Docker & Docker Compose
Jenkins (CI/CD)
Prometheus
Grafana
cAdvisor
GitHub Webhooks
💡 Key Learnings
✔ Difference between host-based, container-based, and CI/CD-based deployments
✔ Importance of monitoring at infra, container, and app levels
✔ Troubleshooting real-world issues like:
Docker permissions
Port conflicts
Jenkins webhook issues
Resource constraints on small instances (swap memory)
💡 Alerting using Grafana
✔ Setup the alert on the bases of CPU >70.
✔ Setup the email notification of the alert on my gmail email id- ankitdhiman15@gmail.com

💡 Backup of nodesapp folder on S3 named Syntra-in-one-shot
✔ Setup the periodically backup on s3 according to time and date
✔ use zip and AWS CLI for the same.
