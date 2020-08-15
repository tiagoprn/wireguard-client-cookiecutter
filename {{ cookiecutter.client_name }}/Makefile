.PHONY: help
SHELL:=/bin/bash
PROJECT_ROOT=$(shell pwd)

help:  ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST) | sort

keys:  ## Generate the private/public key
	sudo wg genkey | sudo tee {{ cookiecutter.client_name }}.key | wg pubkey | sudo tee {{ cookiecutter.client_name }}.key.pub
	sudo chmod 600 {{ cookiecutter.client_name }}.key
	sudo sed -i -e "s/PRIVATE_KEY/$$(cat {{ cookiecutter.client_name }}.key)/g" {{ cookiecutter.client_name }}.conf

qrcode: ## Generate the qrcode (e.g. to be used on an android client)
    sudo curl https://raw.githubusercontent.com/tiagoprn/devops/master/shellscripts/utils/txt-to-qrcode.sh -o /usr/bin/txt-to-qrcode.sh
	sudo chmod 0744 /usr/bin/txt-to-qrcode.sh
	/usr/bin/txt-to-qrcode.sh {{ cookiecutter.client_name }}.conf && mv qr-1.png {{ cookiecutter.client_name }}.qrcode.png


