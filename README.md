Ansible playbooks and roles 



```bash
ansible-playbook  \
--inventory='X.X.X.X' \
--user=ubuntu \
--become-method=sudo \
--become \
--forks=5 \
--private-key='~/.ssh/XXX'
```
