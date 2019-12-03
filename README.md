Ansible playbooks and roles for the ICON Blockchain 

> To work with this repo, you need to install `meta` to pull in sub-repos 

## Prerequisites 

```bash
pip install --user ansible 
sudo apt install nodejs 
npm i -g meta 
```

## To run a playbook 

```bash
ansible-playbook  \
--inventory='X.X.X.X,' \
--user=ubuntu \
--become-method=sudo \
--become \
--forks=5 \
--private-key='~/.ssh/XXX'
```
