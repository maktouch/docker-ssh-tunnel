# Easy SSH tunnels in Docker

This container is useful if you want to provide easy tunneling to some servers. 

## Usage

```lang=yaml
tunnel:
  image: maktouch/ssh-tunnel:1.0.0
  ports:
    - 3306:3306
    - 5432:5432
  command: |
    -L 3306:<mysql-host>:3306 
    -L 5432:<postgres-host>:5432 
    <bastion-user>@<bastion-host>
  volumes:
    - <my-private-key>:/sshtunnel_rsa
```

## Links

<https://github.com/maktouch/docker-ssh-tunnel>
<https://hub.docker.com/r/maktouch/ssh-tunnel>
