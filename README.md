# centos-ssh-server
A container Docker with CentOS 7, SSH server and scp.

## How to build?

```
  git clone https://github.com/systextil-labs/centos-ssh-server.git
  cd centos-ssh-server
  docker build -t systextil/centos-ssh-server .
```

## How to run?

```
  docker run -d --name=SSH_SEVER -p 2222:22 systextil/centos-ssh-server:latest
```

## How to access?

```
  ssh root@127.0.0.1 -p 2222
  password: admin
```
