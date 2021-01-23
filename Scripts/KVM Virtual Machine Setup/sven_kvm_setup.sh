#/bin/bash

# KVM - Virtual Machine Installer for Ubuntu 20.04
# ------------------------------------------------------------------------------------------------------
# Usage: sudo bash sven_kvm_setup.sh

declare -a packages=("qemu" "qemu-kvm" "libvirt-daemon" "libvirt-clients" "bridge-utils" "virt-manager")
declare username=$(stat -c '%U' $0)
# declare -p packages

function install_package {
	printf "%-25s%-25s" "Installing package:" "$1"

	if [ $(apt list --installed $1 2> /dev/null | grep "installed" | wc -l) -gt 0 ];
	then
		printf "%26s\n" "[ ALREADY INSTALLED ]"
	else
		apt install -y $1 &> /dev/null
		if [ $? -eq 0  ];
		then
			printf "%26s\n" "[ DONE ]"
		else
			printf "%26s\n" "[ FAILED ]"
			exit 1
		fi
	fi
}

echo "KVM - Virtual Machine Installer for Ubuntu 20.04"
printf "=%.0s" $(seq 0 75)
echo 

# KVM hardware support tests
if [ $(egrep -c '(vmx|svm)' /proc/cpuinfo) -gt 0 -a \
	$(ls /dev | grep kvm | wc -l) -gt 0 -a \
	$(lsmod | grep kvm | wc -l) -gt 0 ];
then
	printf "%-25s%50s\n" "KVM hardware support tests" "[ PASSED ]"
	printf "=%.0s" $(seq 0 75)
	echo
else
	printf "%-25s%50s\n" "KVM hardware support tests" "[ FAILED ]"
	printf "=%.0s" $(seq 0 75)
	echo
	exit 1
fi

# Package installation
for package in ${packages[*]};
do
		install_package $package
done


printf "=%.0s" $(seq 0 75)
echo

# Check if libvirtd-daemon is running after package installation
if [ $(systemctl status libvirtd 2> /dev/null | grep "active" | wc -l) -gt 0 ];
then
	printf "%-25s%51s\n" "Status libvirtd-daemon" "[ SERVICE ACTIVE ]"
	printf "=%.0s" $(seq 0 75)
	echo
else
	printf "%-25s%51s\n" "Status libvirtd-daemon" "[ SERVICE INACTIVE ]"
	printf "=%.0s" $(seq 0 75)
	echo
	exit 1
fi

# Add user to the libvirt group
adduser $username "libvirt" &> /dev/null
result=$?
if [ $result -eq 0 -a $(groups $username | grep "libvirt" | wc -l) -gt 0 ];
then
	printf "%-60s%16s\n" "User $username added to libvirt group" "[ ADDED ]"
	printf "=%.0s" $(seq 0 75)
	echo
else
	printf "%-60s%16s\n" "User $username added to libvirt group" "[ FAILED ]"
	printf "=%.0s" $(seq 0 75)
	echo
	exit 1
fi
