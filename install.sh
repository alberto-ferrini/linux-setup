#!/bin/bash

# Linux setup installer

curl -sL https://raw.githubusercontent.com/alberto-ferrini/linux-setup/refs/heads/main/linux-setup -o ~/linux-setup
chmod 775 ~/linux-setup
~/linux-setup
