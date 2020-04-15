#!/bin/bash

# Fedora Update Script

clear
echo "                          "
echo " _____       _     _       "
echo "|  |  |___ _| |___| |_ ___ "
echo "|  |  | . | . | .'|  _| -_|"
echo "|_____|  _|___|__,|_| |___|"
echo "      |_|                  "
echo ""
dnf clean all
dnf --refresh upgrade -y
#dnf clean all
freshclam

echo "System is updated"
