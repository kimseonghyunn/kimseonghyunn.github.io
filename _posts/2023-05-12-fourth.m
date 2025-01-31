---
layout: single
title: "클라우드 20230512"
---

# php 웹 게시판 만들기

# 1. board.sql
다음과 같은 board.sql 쿼리문을 토드에 작성한다.

<img width="220" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/c485a1c2-29f7-45ab-88b1-de5244ccad6b">

<img width="498" alt="2" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/17dc4fa9-e2ee-439f-9784-904d3cf17443">

# 2. members.sql
다음괴 같은 members.sql 쿼리문을 토드에 작성한다.

<img width="222" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/21e9e58c-f3c6-4caa-aac8-6907a7f4cbc1">

<img width="495" alt="2" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/21a787c4-07fb-4d3e-841d-33a04ed01ede">

# 3. 데이터 넣기
members 테이블에 임의의 데이터를 넣는다.

<img width="292" alt="2" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/5868173c-8148-48a0-95e2-4c798a29d110">

+ 버튼을 누르면 테이블에 데이터값을 직접 추가할 수 있다.

# 4. 게시판 php 만들기
게시판 php 파일들의 mysql 연결을 변경한다.

<img width="850" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/c872a130-ffd9-43d4-8181-6349cb41aed2">


board_list.php, board_insert.php, login.php, board_delete.php, board_modify.php, main.php, board_modify_form.php, board_view.php 
총 8개의 php 파일에 대한 엔드포인트와 아이디, 비밀번호, db를 변경한다.

# 5. WinSCP
WinSCP는 Windows 운영 체제에서 안전한 파일 전송 및 관리를 위한 강력한 클라이언트다.

게시판 php를 putty에 직접 옮기기 어려우기에 WinSCP를 대신 사용한다.

<img width="960" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/25bc2440-7bf6-447a-9b3f-066b1bcce3fe">

putty에서 파일들이 제대로 옮겨간 것을 확인할 수 있다.

<img width="586" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/d77af487-d181-42a0-bfe2-bf862afa739a">

# 6. 파일 옮기기
파일들의 위치가 /var/www/html/에서 열려야 브라우저에서 접속할 수 있으므로 전체 파일들을 복사해서 옮겨주도록 한다.

<img width="472" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/7e5b3d90-4d8e-490d-9e2a-0b6076cf5fda">

위치를 옮긴 뒤 파일들을 확인해보면 옮겨진걸 확인할 수 있다. 

<img width="533" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/b1060a72-3fcd-4f5b-bc66-4276738ef162">

# 7. 게시판 확인하기 
이제 퍼블릭 주소로 들어가 보면 게시판이 완성되있는 것을 볼 수 있다.

<img width="949" alt="캡처" src="https://github.com/kimseonghyunn/kimseonghyunn.github.io/assets/121752791/56c1c17c-d374-412f-b161-04c0f520d567">

포인트 랭킹을 보면 아까 넣은 데이터들이 있는 것을 확인할 수 있다.
