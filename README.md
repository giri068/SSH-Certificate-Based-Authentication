# 🔐 SSH Certificate-Based Authentication 

This project demonstrates secure, CA-based SSH login using 4 VMs:

- **Parrot** – SSH Certificate Authority
- **Kali** – Jump Host (bastion)
- **Ubuntu** – Final Server
- **Parrot2** – Client (intern/dev)

## 🎥 Demo Video
[Watch on YouTube](https://www.youtube.com/watch?v=Ssy-8AoZVWg)

## 🚀 Features
- Centralized SSH key signing
- Time-limited certificate login
- ProxyJump: Client → Kali → Ubuntu
- UFW firewall: blocks direct access
- Easy key rotation and expiry

## 📁 Files Included
- `configs/` → SSH and UFW configs
- `slides/` → Network diagram

## 📌 Usage
1. CA signs client keys
2. Kali & Ubuntu trust CA
3. Client connects using certs (no passwords)

## 📧 Contact
[girishkumar34672@gmail.com] | [LinkedIn](https://www.linkedin.com/in/giribabuetteri/)

