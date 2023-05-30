---
layout: single
title: "클라우드 20230526"
---

# DOCKER
도커(Docker)는 컨테이너화된 애플리케이션을 개발, 배포 및 실행하기 위한 오픈 소스 플랫폼이다. 
도커를 사용하면 애플리케이션과 그에 필요한 모든 종속성을 가볍고 격리된 환경인 컨테이너로 패키징할 수 있다.
# 1. repository 인덱스 갱신하기(최신 패키지로 저장소에 있는 패키지들을 업데이트)
sudo apt update
이 명령은 패키지 관리자인 apt를 사용하여 시스템의 패키지 목록을 최신 상태로 업데이트한다.

<img width="367" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/bee7c4e9-610b-440a-b122-885789f56bd1">

# 2. 도커 다운을 위해 필요한 패키지 설치
sudo apt install apt-transport-https 
apt-transport-https 패키지는 apt 패키지 관리자를 통해 HTTPS 프로토콜을 사용하여 안전한 방식으로 패키지를 다운로드하고 설치하는 데 필요한 도구다.

<img width="540" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/5d2830df-9ed3-48e7-bdea-e5e0c46b35fb">

sudo apt install ca-certificates
ca-certificates 패키지는 인증 기관의 공개 인증서(authority certificates)를 관리하는 도구다.

<img width="506" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/f05bc4dc-92e7-4e37-ae82-b06fa85ef31b">

sudo apt install curl 
curl은 명령 줄에서 URL을 통해 데이터를 전송하거나 받는 기능을 제공하는 도구다. 
주로 네트워크 관련 작업을 수행하며, HTTP, HTTPS, FTP 등 다양한 프로토콜을 지원한다.

<img width="414" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/658928aa-ed39-429a-8d93-1b509250682b">

sudo apt install software-properties-common
oftware-properties-common 패키지는 소프트웨어 소스 관리 도구인 add-apt-repository 등을 포함하고 있다. 
이 도구를 사용하면 소프트웨어 패키지 저장소를 추가하거나 관리할 수 있다.

<img width="600" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/e4da5ed2-f942-4e4d-8f47-353ffb09cf67">

# 3. curl 명령어로 도커 다운받기
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
curl을 사용하면 다양한 프로토콜(HTTP, HTTPS, FTP 등)을 지원하는 URL을 통해 데이터를 전송하고, 서버로부터 데이터를 가져올 수 있다.

<img width="684" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/7b58c2fe-03a6-44e7-8ace-8f36f0bd374c">

# 4. repository에 경로 추가하여 apt 리스트에 패키지 다운 경로 추가
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
=>(위 커맨드는 x86_64 / amd64 아키텍처를 위한 커맨드 )

<img width="684" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/4ea5b09d-80c1-4e75-9428-c069d539da6d">

sudo apt update 
=> 저장소의 패키지 갱신

<img width="375" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/cd970ba6-a3c9-4a23-9d01-aab0e8f094c9">

# 5. 도커 설치하기
apt-cache policy docker-ce
apt-cache policy docker-ce 명령은 docker-ce 패키지의 설치 상태와 관련된 정보를 보여준다. 

<img width="457" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/d1345e20-a073-455a-88d3-09a194e1c4af">

sudo apt install docker-ce
명령을 실행하면 docker-ce 패키지와 관련된 종속성을 포함하여 Docker CE를 시스템에 설치한다.

<img width="453" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/b4efc936-9c7e-414e-80ea-e97ab9e4a4a0">

# 6. 도커 시스템 확인하기
sudo systemctl status docker

<img width="479" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/7b0ca807-1e04-4ea5-9750-00a9265b108d">

# Hello world이미지 받기
sudo docker pull hello-world
sudo docker pull hello-world 명령은 Docker Hub에서 hello-world 이미지를 다운로드하는 명령이다.
위 명령을 실행하면 Docker 클라이언트가 Docker Hub에서 hello-world 이미지를 찾아서 다운로드한다. 
hello-world 이미지는 간단한 테스트 이미지로, Docker가 올바르게 설치되었는지 확인하는 데 사용된다.

<img width="683" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/40555a3f-e2ee-42b2-94b5-1374e869e271">

sudo docker images
sudo docker images 명령은 시스템에 저장된 Docker 이미지의 목록을 표시하는 명령이다.

<img width="525" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/339ccd52-a29c-44c5-bcd4-663608be279a">

sudo docker run hello-world
sudo docker run hello-world 명령은 "hello-world" 이미지를 사용하여 Docker 컨테이너를 실행하는 명령이다.

<img width="682" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/624a6887-7588-48f9-870a-bdfcade0efc8">

sudo docker ps -a 
sudo docker ps -a 명령은 실행 중인 Docker 컨테이너와 종료된 컨테이너의 목록을 표시하는 명령이다.

<img width="687" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/838dc291-f78b-4ddc-ae41-7724b00d8ed1">

sudo docker rm 컨테이너ID
sudo docker rm 컨테이너ID 명령은 Docker에서 지정한 컨테이너를 삭제하는 명령이다.

<img width="455" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/2545ed96-5c72-4553-a176-f69f89b8e506">

sudo docker rmi 컨테이너ID
sudo docker rmi 컨테이너ID 명령은 Docker에서 지정한 이미지를 삭제하는 명령이다.
위 명령을 실행할 때 컨테이너ID에는 삭제하려는 이미지의 ID나 태그를 지정한다. 
컨테이너ID는 sudo docker images 명령을 사용하여 확인할 수 있다.
이미지가 사용 중인 경우, 해당 이미지를 사용하는 컨테이너를 먼저 종료하고 삭제해야 한다.
삭제한 이미지는 복구할 수 없다.

<img width="684" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/fbb1200b-cfd4-48e9-bd8b-15fe7ecfbacb">

# 7. 도커 버전 확인
docker -v

<img width="310" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/28a6b69c-0f51-4adc-858f-cfb2b735d155">

# 8. MySQL 5.6 버전을 다운로드
sudo docker pull mysql:5.6

<img width="690" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/a1f56550-2ede-43cd-995c-c3d410455381">

# 9. Docker 이미지를 확인한다
sudo docker images

<img width="507" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/3c646d81-fdef-45ef-a644-159e4d5fd0be">

# 10. MySQL Docker 컨테이너 생성 및 실행( e:환경변수 설명, d: detach-데몬 백그라운드)
sudo docker run --name mysql-lecture -e MYSQL_ROOT_PASSWORD=1234 -d -p 3306:3306 mysql:5.6 

<img width="685" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/8532b208-cb62-4afe-93a1-3510e09ae411">

# 11. Docker 컨테이너 리스트 출력
sudo docker ps -a

<img width="683" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/61278450-07b6-43ab-8d48-3abb14be59f2">

# 12. MySQL Docker 컨테이너 시작/중지/재시작
# MySQL Docker 컨테이너 중지
sudo docker stop mysql-lecture 

# MySQL Docker 컨테이너 시작
sudo docker start mysql-lecture 

# MySQL Docker 컨테이너 재시작
sudo docker restart mysql-lecture 

# 13. MySQL Docker 컨테이너 접속(-i, --interactive, -t, tty)
sudo docker exec -it mysql-lecture /bin/bash

<img width="608" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/c7b98649-e3c3-4af5-b208-8861b30e24c4">

<img width="670" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/13b951df-6d1c-4e6c-b688-f91ee912682f">



