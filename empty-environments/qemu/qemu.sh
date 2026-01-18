#!/bin/bash

cloud-localds linux-setup_seed.img user-data.yaml meta-data.yaml 
sudo cp linux-setup_seed.img /var/lib/libvirt/images
sudo qemu-img create -f qcow2 -b /var/lib/libvirt/images/noble-server-cloudimg-amd64.img -F qcow2 /var/lib/libvirt/images/linux-setup_disk.qcow2 20G
virt-install --connect qemu:///system --name linux-setup --memory 4096 --vcpus 4 --disk path=/var/lib/libvirt/images/linux-setup_disk.qcow2,format=qcow2 --disk path=/var/lib/libvirt/images/linux-setup_seed.img,device=cdrom --os-variant ubuntu24.04 --network network=default --graphics none --import
virsh destroy --domain linux-setup
virsh undefine --domain linux-setup --remove-all-storage
