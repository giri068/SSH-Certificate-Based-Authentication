# SSH Certificate-Based Authentication Project (4-VM Lab Setup)

## 🔐 Overview

This project demonstrates secure, centralized SSH certificate-based authentication using:

- SSH CA Signing
- Time-limited Certificates
- ProxyJump Access via Bastion Host
- UFW Firewall for SSH restriction
- 4-VM Setup (Parrot, Kali, Ubuntu, Parrot2)

---

## 🖥️ Lab Setup

| Role       | VM       | Purpose                    |
|------------|----------|----------------------------|
| Parrot     | Admin    | Signs SSH certificates     |
| Kali       | Bastion  | Jump host with CA trust    |
| Ubuntu     | Server   | Final target with CA trust |
| Parrot2    | Client   | Requests signed cert       |

---

## 🔧 Key Files

| File                        | Description                            |
|-----------------------------|----------------------------------------|
| `ssh_config.client`         | SSH client config for ProxyJump login  |
| `sshd_config.kali.bak`      | SSHD config for Kali                   |
| `sshd_config.ubuntu.bak`    | SSHD config for Ubuntu                 |
| `ufw-ssh-only-from-kali.sh` | Script to restrict SSH via UFW         |
| `sample-signing-command.txt`| One-liner to sign cert with 10min TTL  |

---

## ✅ How It Works

1. Admin (Parrot) creates CA key and shares CA public key with Kali & Ubuntu
2. Client (Parrot2) generates SSH key and sends public key to CA
3. CA signs it and returns SSH certificate to client
4. Client uses ProxyJump (via Kali) to reach Ubuntu
5. SSH access is only valid for 10 minutes
6. UFW on Ubuntu ensures SSH is only allowed from Kali

---

## 🎯 Features

- No key copying to servers
- Cert-based identity, not static keys
- Certs expire automatically (no cleanup needed)
- Bastion adds one more layer of security

---

## 📸 Demo Video

👉 https://www.youtube.com/watch?v=Ssy-8AoZVWg

---

