# Docker on VirtualBox
## Required
- git
- VirtualBox
- Vagrant

## How To Use

```shell
git clone https://github.com/190ikp/vagrant-test.git
cd vagrant-test
vagrant up
```
then access http://localhost:8080/ via your browser, you can see nginx's default page, by default setting.  
if you want to use Docker for your development, customize [docker-compose.yml](./docker-compose.yml).  

for more infomation about Docker Compose, read [official document](https://docs.docker.com/compose/).  
for more infomation about Vagrant, read [official document](https://www.vagrantup.com/docs/index.html).