## Ansible Playbook README

##### This Ansible playbook performs the following tasks:
-
    _Initializes runtime variables_
-
    _Installs updates (yum package manager or apt package manager)_
-
    _Clones a repository_
-
    _Initializes environment_

## Usage

To use this playbook, run the following command:

**ansible-playbook playbook.yml**

## Playbook Structure

The playbook is structured as follows:

yaml

- hosts: all
  gather_facts: yes
  become: true

  pre_tasks:
    - name: Initialize Runtime Variables
      include_role:
        name: init_runtime_variables

    - name: Install Updates (yum Package Manager)
      tags: always
      yum:
        update_only: true
        update_cache: yes
        state: latest
      when: server_package_manager == "yum"
    
    - name: Install Updates (apt Package Manager)
      tags: always
      apt:
        upgrade: yes
        update_cache: yes
        state: latest
      when: server_package_manager == "apt"

  roles:
    - clone_repo
    - init_enviroment

**The hosts field** specifies the hosts that the playbook will run on. The gather_facts field tells Ansible to gather facts about the hosts before running the playbook. The become field specifies that Ansible should run commands as the root user.

**The pre_tasks section** includes tasks that are run before the roles. In this case, the Initialize Runtime Variables task initializes runtime variables, and the Install Updates tasks updates the server using either the yum or apt package manager.

**The roles section** includes the roles that are run by the playbook. In this case, the clone_repo role clones a repository, and the init_enviroment role initializes the environment.
Notes

_**To run the playbook** successfully, make sure that the init_runtime_variables role is included in your playbook's roles directory. Additionally, ensure that the server's package manager is either yum or apt.
Contributions_

**Contributions to this playbook are welcome. Please feel free to submit a pull request or open an issue if you have any suggestions or improvements.**