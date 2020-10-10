#!/bin/bash

printf "\n  Welcome To EzVirtctl, Lets install Virtctl...\n\n"

export VERSION=v0.34.0

printf "Deploy the KubeVirt operator...\n\n"
kubectl apply -f https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/kubevirt-operator.yaml

printf "\nCreate the KubeVirt CR (instance deployment request)...\n\n"
kubectl apply -f https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/kubevirt-cr.yaml

printf "\nwait until all KubeVirt components is up...\n\n"
kubectl -n kubevirt wait kv kubevirt --for condition=Available

printf "\nInstall Virtctl...\n\n"
wget https://github.com/kubevirt/kubevirt/releases/download/${VERSION}/virtctl-${VERSION}-linux-x86_64 -O /usr/local/share/virtctl
chmod +x /usr/local/share/virtctl
