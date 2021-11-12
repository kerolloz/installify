#!/usr/bin/env bash
# script to install minikube

if ! grep -E 'vmx|svm' /proc/cpuinfo > /dev/null; then # must support virtualization
	echo "CPU doesn't support virtualization"
	exit 1
fi

install () {

	if command kubectl >/dev/null 2>&1; then #	2>&1 simply says redirect standard error to standard output.
		echo "kubetcl is already installed"
	else
		curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
		chmod +x kubectl
		mv kubectl $HOME/local/bin
	fi

	if command minikube >/dev/null 2>&1; then
		echo "minikube is already installed"
	else
		curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
		chmod +x minikube
		mv minikube $HOME/local/bin
	fi
}

install
