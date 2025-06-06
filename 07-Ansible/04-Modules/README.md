# Ansible Module Usage Examples

This README provides a step-by-step guide for using various **Ansible modules** to automate package installation and command execution across remote hosts. All examples are based on executing commands from within the `02-Modules/` directory, assuming you have a working Ansible inventory file (`hosts`) and passwordless SSH access to target machines.

---

## Prerequisites

Ensure the following before executing commands:

- Ansible is installed (`ansible --version`)
- You have an inventory file (`hosts`)
- Remote hosts are reachable via SSH
- You have `sudo` access (or run with `-b` to become superuser)

---

## Basic Directory Navigation and Inventory

```bash
cd 04-Modules/
ls
cat hosts
```
## Ansible Documentation Commands
```
ansible-doc -l
ansible-doc -l | wc -l
```
#### Lists all available Ansible modules

#### Counts total number of modules available

## OS Version Check (Local)
```
cat /etc/os-release
```
#### Displays the OS version and distro information of the local machine

## Package Installation Using apt Module
```
ansible-doc apt
```
#### Shows documentation for the apt module (used for Debian/Ubuntu systems)
```
ansible 172.31.0.101 -i hosts -m apt -a "name=tree state=present"
ansible 172.31.0.101 -i hosts -m apt -a "name=tree state=present" -b
```
#### Installs the tree package on the specified host

#### Second command uses -b to run with elevated privileges (sudo)

## System Disk Usage Check
```
df -h /
ansible web -i hosts -m command -a "df -h /" -b
```
#### Checks disk usage of root partition locally and on the remote web group using Ansible's command module

## System Info Using uname and OS Release
```
ansible web -i hosts -m command -a "uname -a" -b
ansible web -i hosts -m command -a "cat /etc/os-release" -b
ansible web -i hosts -m command -a "cat /etc/*-release" -b
```
#### Executes common system info commands on remote servers to fetch kernel and OS info

## Check Shell Type (Local)
```
echo $SHELL
```
#### Shows the default shell in use for the current user

## Using the shell Module (When Wildcards or Shell Features Are Needed)
```
ansible web -i hosts -m shell -a "cat /etc/*-release" -b
```
#### Uses the shell module instead of command because wildcard expansion (*) requires a shell interpreter


