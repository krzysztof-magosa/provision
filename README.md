# Provision

## Initialization of Ansible
```shell
$ ./bootstrap.sh
```

## Provisioning of home machines
```shell
# Provision home laptop
$ ansible-playbook site.yml --limit home-mbp

# Provision home playground
$ ansible-playbook site.yml --limit home-playground

# Provision home machines - laptop and playground
$ ansible-playbook site.yml --limit home
```

## Provisioning of work machines
```shell
# Provision work laptop
$ ansible-playbook site.yml --limit work-mbp

# Provision work playground
$ ansible-playbook site.yml --limit work-playground

# Provision work machines - laptop and playground
$ ansible-playbook site.yml --limit work
```
