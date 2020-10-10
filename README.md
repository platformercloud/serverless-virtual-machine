# EzVirtctl

## What is this 
---
This is a script automate `virtctl` installation.

## How To
---
### Intall

```
cd /tmp
git clone https://github.com/platformercloud/serverless-virtual-machine
cd serverless-virtual-machine
chmod +x ezvirtctl.sh
./ezvirtctl.sh
```

### Run it
Start the virtual machine
```
virtctl start myvm
```
Stop the virtual machine
```
virtctl stop myvm
```

### References

 - [VirtualMachine](https://kubevirt.io/user-guide/#/architecture) 
 - [Installation](https://kubevirt.io/user-guide/#/installation/installation)
 