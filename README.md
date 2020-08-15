# wireguard-client-cookiecutter

This cookiecutter generates key pairs and the configuration of a wireguard
client, encoding the configuration on a qrcode so that it can be used to
generate configuration e.g. for a mobile client.

## Requisites

- qrencode
- wireguard installed and configured on a host machine - e.g. through [my wireguard playbook](https://github.com/tiagoprn/devops/tree/master/ansible-playbooks/ubuntu/18.04/server/wireguard).


## How to use

After running the cookiecutter feeding it with the desired information, enter
the folder created with the client name and run:

```
$ make keys
$ make qrcode
```

Then, copy the keys and the configuration to your client machine - if you are
using the mobile as client with the wireguard app, just scan the qrcode image
created on the folder.
