if ur using EC2 Machine

and if u want use ssh appleboy actions
##step1:use the generated pem which is a private key file paste it in github actions secretes
##step2: generate its public key from your Linux machine
use this command 
```sh
ssh-keygen -y -f ~/.ssh/ci-cd.pem
```
step3:
On EC2, it should be present in:a
```sh
~/.ssh/authorized_keys
```
ref blog for Setup- docker

https://docs.vultr.com/how-to-install-docker-on-ubuntu-24-04?ref=9141994&obility_id=16876059738&&utm_term=&utm_content=&ref=9141994