(nginx-hosting — Project 1 in DevOps Portfolio by Aadil Sheikh)

# NGINX Hosting Project — DevOps Portfolio (Project 1)
**Author:** Aadil Sheikh  
**Technologies:** Linux • NGINX • Bash • Deployment Automation • Git/GitHub • WSL

---

## 📌 Project Overview  
This project demonstrates hosting a static website using **NGINX on Ubuntu (WSL)** and deploying updates automatically using a custom **deploy.sh** script.  
It serves as the first project in my **DevOps Portfolio**, showcasing practical knowledge of Linux, web servers, automation, and version control.

The project includes:
- A modern static website built for my DevOps portfolio  
- NGINX setup and configuration  
- Deployment automation with Bash  
- File permission management  
- Documentation of all commands and steps  
- Version control through Git & GitHub  

---

## 🚀 What This Project Covers  
### ✔ **NGINX Hosting**
- Installed and configured NGINX inside WSL  
- Located the web root (`/var/www/html`)  
- Replaced the default index page with a custom portfolio site  
- Verified service status and HTTP response  

### ✔ **Linux Skills**
- Working with system services (`systemctl`)  
- Managing file permissions (`chown`, `chmod`)  
- Understanding Linux directory structure  
- Troubleshooting errors (E212, missing files, permissions)  

### ✔ **Deployment Automation**
Using `deploy.sh`, I automated:
- Copying updated site files to `/var/www/html`  
- Setting correct permissions  
- Restarting NGINX  
- Backing up previous versions  

This allows updates to be deployed with a single command:

```bash
./deploy.sh

🗂 Folder Structure

nginx-hosting/
│
├── projects/
│   └── project-1-nginx-hosting/
│       ├── site/
│       │   ├── index.html
│       │   ├── style.css
│       │   └── README.md
│       ├── deploy.sh
│       ├── commands.md
│       └── README.md
│
└── README.md  <-- (this file)

🌐 Live Preview (Local)

After deploying, the site can be viewed at:

http://localhost

or

http://127.0.0.1


🧠 What I Learned

This project gave me practical, real DevOps experience:

🔹 Linux system management
🔹 NGINX server setup & troubleshooting
🔹 Automation using Bash scripting
🔹 Git version control + GitHub personal access tokens
🔹 File permissions and ownership
🔹 Working inside WSL Linux environment
🔹 Deploying a portfolio website from source code
📈 Future Enhancements

Planned improvements:

Containerize the project using Docker (Project 2)

Add CI/CD pipeline with GitHub Actions

Deploy to AWS EC2

Add HTTPS using Certbot

Add dynamic sections to the website

🧑‍💻 About the Author

I’m Aadil Sheikh, an aspiring DevOps Engineer building a full portfolio of practical DevOps projects, including:

Linux administration

Docker & containerization

CI/CD automation

Cloud deployments (AWS)

Infrastructure as Code

This project is the first step in my DevOps journey.