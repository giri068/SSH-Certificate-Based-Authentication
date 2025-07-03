#!/bin/bash
# Allow SSH only from Kali's IP (replace with actual IP if needed)
sudo ufw allow from 192.168.56.113 to any port 22 proto tcp
sudo ufw deny 22
sudo ufw enable
