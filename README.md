# 起動
- sudo docker run -i -t -d -p 80:80 -p 443:443 --name nginx --link gitbucket:gitbucket 'nginx/ubuntu:14.04' /bin/bash
