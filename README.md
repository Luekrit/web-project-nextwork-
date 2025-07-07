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

## Technologies
Here’s what I’m using for this project:

Tools used so far:
- **Amazon EC2**: I’m developing my web app on Amazon EC2 virtual servers to ensure the entire process — development to deployment — runs in the cloud.
- **VS Code (Remote SSH)**: My IDE of choice is Visual Studio Code, which connects directly to my EC2 instance, making it easy to write and manage code remotely.
- **Git**: I’m using Git to track changes in my project and manage version control.
- **GitHub**: My code is stored in this GitHub repository. I've also learned how to use a **Personal Access Token (PAT)** for secure authentication when pushing code.
- **Markdown (`README.md`)**: I'm documenting my process in Markdown to explain the project, setup steps, and learning progress clearly.
+ **AWS CodeArtifact**: Used to store Maven dependencies and custom build artifacts. Integrated with Maven using `settings.xml`.
+ **AWS CodeBuild**: Automated the build process using `buildspec.yml`. Integrated with GitHub using AWS CodeConnections. Also automated test execution with `run-tests.sh`.
- **[COMING SOON] AWS CodeDeploy**: Once it's rolled out, CodeDeploy will automate my deployment process across EC2 instances.
- **[COMING SOON] AWS CodePipeline**: Once it's rolled out, CodePipeline will automate the entire process from GitHub to CodeDeploy, integrating build, test, and deployment steps into one efficient workflow.

**Challenges faced and solutions:**
- I couldn’t push code to GitHub at first because I used my password instead of a **Personal Access Token (PAT)**. After generating a PAT and using it for authentication, the push worked.
- Git wasn't detected in VS Code at first. I resolved this by installing Git on EC2 using `sudo yum install git` and confirming the project folder was correctly initialized with `git init`.

<br>

## Setup
To get this project up and running on your local machine, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/Luekrit/web-project-nextwork-.git
    ```
2. Navigate to the project directory:
    ```bash
    cd nextwork-web-project
    ```
3. Install dependencies:
    ```bash
    mvn install
    ```
4. Set up Git (if not already done):
    ```bash
    git config --global user.name "Luekrit Kongkamon"
    git config --global user.email "you@nextwork.org"
    ```

**Common Issues & Fixes:**
- ❌ `git push` fails due to password:  
  ✅ Use a **GitHub Personal Access Token (PAT)** instead of your regular password.
- ❌ Git not detected in VS Code Remote SSH:  
  ✅ Install Git in EC2 using `sudo yum install git` and confirm you're in a Git repo with `git status`.

<br>

## Progress Log

**✅ Day 1:**
- Set up EC2 instance and connected using VS Code Remote SSH
- Installed Git and initialized a local Git repository

**✅ Day 2:**
- Made changes to `index.jsp`
- Committed changes using Git
- Created and used a GitHub **Personal Access Token (PAT)** to push changes
- Updated README file using Markdown

**✅ Day 3:**
- Set up AWS CodeArtifact repository and configured Maven `settings.xml`
- Verified dependencies could be pulled and uploaded correctly
- Troubleshooted authentication issues and repository permissions

**✅ Day 4:**
- Created a CodeBuild project connected to GitHub via CodeConnections
- Wrote a `buildspec.yml` file to define build and test steps
- Created a custom test script (`run-tests.sh`) and automated testing
- Enabled CloudWatch Logs and stored artifacts in S3
- Solved IAM role and webhook permission issues to enable successful builds
## ✅ Sample Test Output (Day 4)
==== RUNNING SIMPLE TESTS ====
✅ PASS: src directory exists
✅ PASS: index.jsp exists
✅ PASS: This test always passes
==== ALL TESTS PASSED ====

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

