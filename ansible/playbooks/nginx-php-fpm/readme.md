# Nginx / PHPFpm on Ubuntu

## Settings

- `http_host`: your domain name.
- `http_conf`: the name of the configuration file that will be created within nginx.
- `http_port`: HTTP port, default is 80.


### Customize Options

```shell
nano vars/default.yml
```

```yml
#vars/default.yml
---
http_host: "your_domain"
http_conf: "your_domain.conf"
http_port: "80"
```

### Run the Playbook

```command
ansible-playbook -l [target] -i [inventory file] -u [remote user] playbook.yml
```