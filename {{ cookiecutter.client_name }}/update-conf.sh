#!/bin/bash
sed -i "s/PRIVATE_KEY/$(cat {{ cookiecutter.client_name }}.key)/g" {{ cookiecutter.client_name }}.conf
