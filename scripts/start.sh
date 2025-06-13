#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
docker stop jpademo || true
docker rm jpademo || true
docker pull 149591431863.dkr.ecr.ap-northeast-2.amazonaws.com/board-repo:latest
docker run -d --name jpademo -p 8080:8080 149591431863.dkr.ecr.ap-northeast-2.amazonaws.com/board-repo:latest
echo "--------------- 서버 배포 끝 -------------------"