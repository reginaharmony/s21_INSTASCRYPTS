#!/bin/bash

# Prompt the user for the name of the virtual machine
echo "Enter the vircheal mashin naem pliz:"
read VM_NAME

# Variables
ISO_PATH=~/goinfre/ubuntu/ubuntu-20.04.6-live-server-amd64.iso
ISO_FOLDER=$(dirname "$ISO_PATH")

# Create iso_target_path if it does not exist
mkdir -p "$ISO_FOLDER"

# Download ISO
if [ ! -f "$ISO_PATH" ]; then
    echo "Distrp image not found. Downloading now... (it will take some time, just wait, m'kay?"
    curl -L -o "$ISO_PATH" https://mirror.yandex.ru/ubuntu-releases/20.04.6/ubuntu-20.04.6-live-server-amd64.iso
else
    echo "Distro imaeg exists (saves some time, yeaaa)"
fi

# Create VM
VBoxManage createvm --name "$VM_NAME" --ostype "Ubuntu_64" --register

# Set VM settings
VBoxManage modifyvm "$VM_NAME" --memory 2048 --vram 32 --cpus 2 --graphicscontroller vmsvga

# Create a virtual hard diski
VDI_PATH="$ISO_FOLDER/${VM_NAME}.vdi"
VBoxManage createhd --filename "$VDI_PATH" --size 20000

# Add a SATA controller and attach the hard disk
VBoxManage storagectl "$VM_NAME" --name "SATA Controller" --add sata --controller IntelAhci
VBoxManage storageattach "$VM_NAME" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "$VDI_PATH"

# Add IDE controller and attach the ISO
VBoxManage storagectl "$VM_NAME" --name "IDE Controller" --add ide
VBoxManage storageattach "$VM_NAME" --storagectl "IDE Controller" --port 0 --device 0 --type dvddrive --medium "$ISO_PATH"
VBoxManage modifyvm "$VM_NAME" --boot1 dvd --boot2 disk --boot3 none --boot4 none

# Start the VM
VBoxManage startvm "$VM_NAME" --type headless
open -a "VirtualBox"