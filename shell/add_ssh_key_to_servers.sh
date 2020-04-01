#!/bin/bash
for ip in `cat ./list_of_servers`; do
    ssh-copy-id -i ~/.ssh/id_rsa.pub root@$ip
done
