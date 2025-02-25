---
layout: single
title:  "클라우드 20230428"
---

# 1.
Apache는 웹 서버 소프트웨어 중 하나로, 인터넷을 통해 웹 페이지를 제공하는 역할을 합니다.

Apache 설치 

1. sudo를 통해 설치해줍니다.
sudo apt update
sudo apt upgrade 
sudo apt-get install apache2

2. cd /var/www/html 로 html 파일 만들위치로 들어갑니다.

<img width="362" alt="캡처" src="https://user-images.githubusercontent.com/121752791/236134433-bc8d4cce-8266-4a1f-a99f-06bdd8a11ebe.PNG">

3. sudo를 통해 index.html을 만들어줍니다.

<img width="495" alt="2" src="https://user-images.githubusercontent.com/121752791/236135834-288842b8-934d-4976-9ce2-072dd74a2497.PNG">

4. 다음과 같이 파일의 내용을 만들어줍니다.

<img width="960" alt="1" src="https://user-images.githubusercontent.com/121752791/236135849-68875317-cfc7-4833-921b-a2b709e0008f.PNG">

5. 주소로 이동하여 결과를 확인합니다.

<img width="266" alt="캡처" src="https://user-images.githubusercontent.com/121752791/236136043-c32ee592-13c7-4584-b587-c82ce1db33d3.PNG">

# 2.
PHP는 서버 측에서 실행되는 스크립트 언어로, 주로 동적인 웹 페이지를 생성하는 데 사용됩니다.

php 설치 

sudo apt-get install -y php
php -version

1. 위에와 같이 cd /var/www/html 로 php 파일 만들위치로 들어갑니다.

2. sudo를 통해 php 파일을 만들어 줍니다. 

<img width="498" alt="1" src="https://user-images.githubusercontent.com/121752791/236138522-f57f2f54-7233-4eb1-8b5b-e590a4dbe880.PNG">

3. 다음과 같이 로 파일의 내용을 만듭니다.

<img width="559" alt="2" src="https://user-images.githubusercontent.com/121752791/236138715-11327c8d-43e0-4abb-aa9f-a1047a7ca598.PNG">

4. 주소로 이동하여 결과를 확인합니다.

<img width="844" alt="3" src="https://user-images.githubusercontent.com/121752791/236138789-95cd6eee-66d0-41f2-94c4-e49d4d9bc818.PNG">

# 3.
MySQL은 오픈 소스 관계형 데이터베이스 관리 시스템(RDBMS)으로, 데이터를 저장하고 검색하는 데 사용됩니다.

MySQL 설치

1. sudo를 통해 설치해줍니다.
sudo apt install mysql-client-core-8.0

2. mysql -u admin -p -h 엔드포인트 로 접속합니다.

<img width="804" alt="1" src="https://user-images.githubusercontent.com/121752791/236143268-4c296c9a-fa8d-44c9-8d81-0f6cb18ae000.PNG">

3. 데이터베이스를 생성해줍니다.

<img width="299" alt="2" src="https://user-images.githubusercontent.com/121752791/236144254-dab2c814-e24f-47f5-9829-af24fd1cba04.PNG">

<img width="207" alt="3" src="https://user-images.githubusercontent.com/121752791/236144473-57262072-ffba-455f-9ec4-344b5d1fca16.PNG">

4. 해당 DATABASE 를 사용하는 계정을 생성합니다.
CREATE USER 'rdsuser'@'%' IDENTIFIED BY 'rdsuser1234';

<img width="520" alt="4" src="https://user-images.githubusercontent.com/121752791/236144984-53039c05-3919-41d7-91a1-4ca5ce3ddc26.PNG">

5. 생성한 계정에 권한을 부여합니다.
GRANT ALL PRIVILEGES ON cloudDB.* TO 'rdsuser'@'%';

<img width="495" alt="1" src="https://user-images.githubusercontent.com/121752791/236147055-bcf9111e-aa47-40b5-b27e-230d7d1e1fb2.PNG">

6. 권한 부여 내용을 메모리에 반영합니다.
flush privileges;

<img width="309" alt="6" src="https://user-images.githubusercontent.com/121752791/236145573-4aa073ab-c03e-4646-a23c-3af522812089.PNG">

# 4.
Toad는 데이터베이스 개발 및 관리를 위한 소프트웨어 도구로, 다양한 데이터베이스 유형에 대한 지원과 개발 생산성을 향상시키는 기능을 제공합니다.

1. student 테이블을 생성합니다.
CREATE TABLE student (
id int NOT NULL AUTO_INCREMENT,
name varchar(30),
email varchar(40),
num varchar(30),
PRIMARY KEY(id)
);

<img width="194" alt="2" src="https://user-images.githubusercontent.com/121752791/236147630-f8f6ff2a-d502-4d07-bb23-a183907f8ea0.PNG">

2. ec2 서버에서 php와 mysql연동 패키지를 install 합니다.
sudo apt install libapache2-mod-php php-mysql

3. 다음과 같은 singup.php와 signup_action.php를 만들어줍니다.

<img width="618" alt="3" src="https://user-images.githubusercontent.com/121752791/236149418-b2cb8f2c-6926-4eba-bb45-827a5c585b2a.PNG">

<img width="948" alt="111" src="https://user-images.githubusercontent.com/121752791/236153007-a35bfb04-66f8-4952-8b1c-50cc7e148d69.PNG">

4. 주소로 이동하여 singup.php를 확인합니다.

<img width="299" alt="1" src="https://user-images.githubusercontent.com/121752791/236150084-17a4707e-5244-4a87-870b-580ed1f6b5cf.PNG">

5. 각각 입력값들을 넣어줍니다.

<img width="303" alt="2" src="https://user-images.githubusercontent.com/121752791/236150744-de9a3c83-e329-463d-8763-bbf7adb6296f.PNG">

<img width="458" alt="3" src="https://user-images.githubusercontent.com/121752791/236150811-3864e1bc-0284-4376-bf03-381bc429699b.PNG">

6. 토드에서 테이블에 값이 들어간 것을 확인합니다.

select * from student;

<img width="171" alt="0" src="https://user-images.githubusercontent.com/121752791/236153479-d628e38e-9afc-4104-8f07-29ea019ed24a.PNG">
