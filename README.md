# Java Web App Deployment with AWS CI/CD

Welcome to this project combining Java web app development and AWS CI/CD tools!

This project is part of the **7-Day DevOps Challenge by NextWork**, and I'm updating the README as I progress through each day.  
Stay tuned for new skills, tools, and improvements added daily.

<br>

## Table of Contents
- [Introduction](#introduction)
- [Technologies](#technologies)
- [Setup](#setup)
- [Contact](#contact)
- [Conclusion](#conclusion)

<br>

## Introduction
This project introduces how to create and deploy a Java-based web application using AWS services, especially focusing on CI/CD automation.

The deployment pipeline I'm building around the Java web app in this repository is invisible to the end-user but makes a big impact by automating software release processes.

I'm also using this challenge to improve my hands-on skills in **cloud infrastructure, DevOps workflows, and version control tools like Git and GitHub**.

<br>

## 🚀 Technologies

Here’s what I’m using for this project:

### ☁️ AWS Services
- **Amazon EC2**: Hosts and runs the Java web application in the cloud.
- **AWS CodePipeline**: Orchestrates the entire CI/CD workflow by connecting GitHub, CodeBuild, and CodeDeploy.
- **AWS CodeBuild**: Compiles, tests, and packages the app automatically using `buildspec.yml`.
- **AWS CodeDeploy**: Deploys the built application to EC2 and handles automatic rollback if a deployment fails.
- **AWS CodeArtifact**: Stores Maven dependencies and custom build artifacts. Integrated via `settings.xml`.
- **AWS CloudFormation**: Used to define and provision AWS resources as code for consistency and repeatability.
- **AWS CloudWatch**: Captures logs from CodeBuild and CodeDeploy to help monitor and troubleshoot.
- **IAM**: Manages roles and policies for secure communication between AWS services.

### 🛠 Dev Tools & Configuration
- **VS Code (Remote SSH)**: Used to write and manage code directly on the EC2 instance.
- **Git**: Tracks changes and version history throughout the project.
- **GitHub**: Hosts the source code and triggers pipeline executions on push.
- **Maven (`pom.xml`)**: Manages dependencies and builds the Java web app.
- **Shell Scripts**: Automates EC2 setup and deployment tasks (`install_dependencies.sh`, `start_server.sh`, `stop_server.sh`).
- **Markdown (`README.md`)**: Documents progress, setup instructions, and learning reflections.

<br>

## 🛠 Setup (Day 1 – Day 7 Breakdown)

This section outlines everything I built and configured during the **7-Day DevOps Challenge**, from setting up my EC2 environment to deploying a Java web app using a fully automated CI/CD pipeline on AWS.

---

### ✅ Day 1: Set Up the Development Environment
- Launched an **EC2 instance** to host the Java web app.
- Connected to the instance via **VS Code Remote SSH**.
- Installed **Git**, initialized a local Git repository, and scaffolded a basic JSP web app.

---

### ✅ Day 2: Configure Version Control with GitHub
- Created a **GitHub repository** and connected it to the local repo.
- Committed code changes and used a **Personal Access Token (PAT)** for secure authentication.
- Practiced using Git commands to manage project history.

---

### ✅ Day 3: Configure AWS CodeArtifact
- Created a **CodeArtifact repository** to manage Maven dependencies.
- Set up Maven authentication using `settings.xml`.
- Verified secure pulling and publishing of artifacts.
- Assigned necessary IAM permissions (e.g., `GetAuthorizationToken`, `ReadFromRepository`).

---

### ✅ Day 4: Set Up CodeBuild
- Created a **CodeBuild project** connected to GitHub via **AWS CodeConnections**.
- Defined build steps in `buildspec.yml`, including:
  - Java runtime setup
  - Auth to CodeArtifact
  - Running tests with `run-tests.sh`
  - Maven build and packaging
- Configured build logs in **CloudWatch** and output artifacts to S3.

---

### ✅ Day 5: Set Up CodeDeploy
- Created a **CodeDeploy application** and a **deployment group** targeting the EC2 instance.
- Wrote the `appspec.yml` file to guide deployment steps.
- Added and configured deployment scripts:
  - `install_dependencies.sh`
  - `start_server.sh`
  - `stop_server.sh`
- Made scripts executable (`chmod +x`) and ensured EC2 instance tagging for deployment.

---

### ✅ Day 6: Automate with CloudFormation (IaC)
- Used **AWS CloudFormation** to define infrastructure as code.
- Generated and edited CloudFormation templates for repeatable deployment of:
  - EC2
  - IAM roles
  - S3 buckets
  - CodeDeploy setup
- Validated templates and resolved stack creation issues.
- Practiced understanding relationships between AWS resources in IaC.

---

### ✅ Day 7: Create + Test CI/CD Pipeline with CodePipeline
- Built a **CodePipeline** that includes:
  - **Source Stage**: GitHub repo with webhook triggers.
  - **Build Stage**: Connected to CodeBuild project.
  - **Deploy Stage**: Linked to CodeDeploy deployment group.
- Set execution mode to **Superseded** to deploy the latest code only.
- Pushed changes to trigger the pipeline and watched full flow (Source → Build → Deploy).
- Verified updates appeared on the live EC2-hosted site.
- Simulated a failed deployment to test **automatic rollback** — previous stable version restored successfully.

## 🐛 Common Issues & Fixes

| ❌ Issue | ✅ Solution |
|---------|-------------|
| `git push` fails due to password | Use a **GitHub Personal Access Token (PAT)** instead of your regular password. |
| Git not detected in VS Code Remote SSH | Install Git in EC2 using `sudo yum install git`, and confirm you're in a Git repo with `git status`. |
| CodeBuild cannot access artifacts | Ensure IAM role has `codeartifact: GetAuthorizationToken` and related permissions like `codeartifact: GetRepositoryEndpoint` and `codeartifact: ReadFromRepository`. |
| No CloudWatch logs generated | Confirm the CloudWatch log group exists and IAM role includes `logs: CreateLogGroup`, `logs: CreateLogStream`, and `logs: PutLogEvents`. |
| CodeDeploy fails during deployment | Verify `appspec.yml` is correct and scripts are executable (`chmod +x scripts/*.sh`). Check CodeDeploy logs on EC2 for error details. |


<br>

## 📈 Progress Log

**✅ Day 1:**  
- Set up EC2 instance and connected using VS Code Remote SSH  
- Installed Git and initialized a local Git repository  

**✅ Day 2:**  
- Made changes to `index.jsp`  
- Committed changes using Git  
- Created and used a GitHub **Personal Access Token (PAT)** to push changes  
- Updated README file using Markdown  

**✅ Day 3:**  
- Set up AWS CodeArtifact repository and configure Maven `settings.xml`  
- Verified dependencies could be pulled and uploaded correctly  
- Troubleshoted authentication issues and repository permissions  

**✅ Day 4:**  
- Created a CodeBuild project connected to GitHub via CodeConnections  
- Wrote a `buildspec.yml` file to define build and test steps  
- Created a custom test script (`run-tests.sh`) and automated testing  
- Enabled CloudWatch Logs and stored artifacts in S3  
- Solved IAM role and webhook permission issues to enable successful builds  

**✅ Day 5–7:**  
- Set up AWS CodeDeploy and connect EC2 instances via a deployment group  
- Configured `appspec.yml` and `.sh` scripts for automated deployment  
- Created full CodePipeline linking GitHub → CodeBuild, → CodeDeploy  
- Tested end-to-end CI/CD by pushing changes to GitHub and verifying live updates on EC2  
- Debugged rollback behavior and confirmed automatic recovery using CodeDeploy  

---

## Contact
If you have any questions or want to connect professionally:

**Luekrit Kongkamon**  
📫 [LinkedIn](https://www.linkedin.com/in/luekrit-kongkamon/)  
📧 [luekrit.k@gmail.com](mailto:luekrit.k@gmail.com)

![Profile Picture](https://avatars.githubusercontent.com/u/203988479?v=4)

<br>

## Conclusion

Thanks for following along! I’ll continue updating this repository with new tools and skills throughout the **7-Day DevOps Challenge**. A big thanks to **[NextWork](https://learn.nextwork.org/app)** for the guidance and resources.

👉 [Get started with the challenge here.](https://learn.nextwork.org/projects/aws-devops-vscode?track=high)

