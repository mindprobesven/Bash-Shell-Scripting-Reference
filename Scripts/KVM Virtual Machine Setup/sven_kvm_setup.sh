#/bin/bash

declare -a packages=("htop" "htop543543543531")
# declare -p packages

function install_package {
	echo -ne "Installing package:\t$1"
	
	if [ $(which $1) ];
	then
		echo -e "\t\t$?: [ ALREADY INSTALLED ]"
	else
		sudo apt install -y $1 &> /dev/null
		if [ $? -eq 0  ];
		then
			echo -e "\t\t$?: [ DONE ]"
		else
			echo -e "\t\t$?: [ FAILED ]"
			exit 1
		fi
	fi
}

echo "KVM installer"
echo "--------------------------------------------"
echo

# KVM hardware support tests
if [ $(egrep -c '(vmx|svm)' /proc/cpuinfo) -gt 0 -a \
	$(ls /dev | grep kvm | wc -l) -gt 0 -a \
	$(lsmod | grep kvm | wc -l) -gt 0 ];
then
	echo -e "KVM hardware support tests\t[ PASSED ]"
else
	echo -e "KVM hardware support tests\t[ FAILED ]"
	exit 1
fi

# Package installation
for package in ${packages[*]};
do
	 install_package $package
done


