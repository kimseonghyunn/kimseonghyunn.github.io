---
layout: single
title:  "클라우드 20230407"
---

# 1. 
sudo : 
 sudo는 UNIX와 유사한 운영 체제에서 root 또는 다른 사용자의 권한으로 명령을 실행하는 명령어입니다. "Superuser do"의 준말로, 일반 사용자가 특정 명령 또는 파일에 대한 root 권한이 필요한 작업을 수행할 수 있도록 합니다. 
#
apt-get : 
 apt-get은 Debian 계열 운영 체제에서 패키지를 설치, 업그레이드, 삭제 및 관리하기 위한 명령어입니다. apt-get은 Advanced Packaging Tool (APT)을 사용하여 패키지를 관리합니다.
# 2.
update : 
 "update" 명령은 패키지 저장소에서 최신 버전의 패키지 정보를 다운로드하고, 현재 시스템에 설치된 패키지와 비교하여 업데이트할 패키지를 확인한 다음, 업데이트를 적용합니다.

<img width="440" alt="a" src="https://user-images.githubusercontent.com/121752791/230636380-80e8b00b-8483-47ff-a930-27a6a330def2.PNG">

# 3.
upgrade : 
 "upgrade" 명령어는 시스템 패키지 저장소에서 최신 버전의 패키지 정보를 다운로드하고, 현재 시스템에 설치된 패키지와 비교하여 업그레이드할 패키지를 확인한 다음, 업그레이드를 진행합니다.

<img width="446" alt="a" src="https://user-images.githubusercontent.com/121752791/230637912-85176954-9aff-47d4-bd41-3ed7f3646274.PNG">

# 4.
history : 
 "history" 명령어는 리눅스나 유닉스 시스템에서 사용자가 이전에 실행한 명령어 목록을 출력하는 명령어입니다. "history" 명령어를 실행하면, 최근에 사용자가 실행한 명령어들의 번호와 함께 목록이 출력됩니다.

<img width="338" alt="a" src="https://user-images.githubusercontent.com/121752791/230638190-a7f3b691-23dc-4fb5-981e-32abca7ec5e1.PNG">

# 5.
who : 
 "who" 명령어는 현재 시스템에 로그인한 사용자 목록을 출력하는 명령어입니다. 이 명령어를 사용하면 로그인한 사용자의 이름, 로그인 시간, 로그인 위치 등의 정보를 확인할 수 있습니다.

<img width="469" alt="a" src="https://user-images.githubusercontent.com/121752791/230638436-a64d9e5a-e9bc-46e5-8153-11275b76a213.PNG">

# 6. 
ps : 
 "ps" 명령어는 현재 실행 중인 프로세스 목록을 출력하는 명령어입니다. 이 명령어를 사용하면 실행 중인 프로세스의 이름, PID(Process ID), CPU 및 메모리 사용량 등을 확인할 수 있습니다.

<img width="285" alt="a" src="https://user-images.githubusercontent.com/121752791/230638691-4ec93010-c9a7-44bd-83af-c2b7aebc0d53.PNG">

# 7.
sudo passwd root : 
 "sudo passwd root"는 관리자 권한으로(root 권한으로) 실행하여 root 계정의 비밀번호를 변경하는 명령어입니다.

<img width="468" alt="a" src="https://user-images.githubusercontent.com/121752791/230639809-1102e78e-6500-4a00-95db-45cd5e43b0b8.PNG">

# 8.
su - root : 
 "su - root"는 현재 사용자를 root 계정으로 전환하는 명령어입니다. "- " 옵션을 사용하여 환경 변수까지 root 계정의 것으로 변경됩니다.

<img width="424" alt="a" src="https://user-images.githubusercontent.com/121752791/230640042-ff5f6372-e874-4326-bdfb-0ec3962ed5ee.PNG">

# 9.
exit : 
 root 계정에서 로그아웃하려면 터미널 창에서 "exit" 명령어를 입력하면 됩니다.

<img width="424" alt="a" src="https://user-images.githubusercontent.com/121752791/230640297-7e2eeddf-8d9f-4949-8d9b-ac380617ed8e.PNG">

# 10.
chmod : 
 "chmod"는 파일이나 디렉토리의 권한을 변경하는 명령어입니다. "chmod"는 "change mode"의 준말입니다.

# 10-2.
chmod 명령어는 세 가지 권한을 변경할 수 있습니다. 각각의 권한은 다음과 같습니다.

 읽기 권한(r) : 파일을 읽을 수 있는 권한, 쓰기 권한(w) : 파일을 수정할 수 있는 권한, 실행 권한(x) : 파일을 실행할 수 있는 권한

# 10-3.
권한은 3개의 숫자로 표현되며, 각각의 숫자는 다음과 같은 의미를 가집니다.

 소유자(user)의 권한 ,그룹(group)의 권한 ,기타 사용자(other)의 권한

<img width="424" alt="a" src="https://user-images.githubusercontent.com/121752791/230641582-9448783d-dc20-4450-bfc7-c1ada468721b.PNG">

위의 권한은 소유자, 그룹, 기타 사용자에 대한 권한을 나타냅니다. 각각의 r, w, x는 읽기, 쓰기, 실행 권한을 나타냅니다. "-" 기호는 해당 권한이 없음을 나타냅니다.

# 10-4.
chmod : 
 각 권한은 0~7까지의 8진수로 표현됩니다. 이때 8진수 각 자리는 각각 다음과 같은 의미를 가집니다.

 1: 실행 권한, 2: 쓰기 권한, 4: 읽기 권한. 따라서, 예를 들어 7을 입력하면 111(2^2 + 2^1 + 2^0)이 되어 모든 권한이 설정됩니다. 5를 입력하면 101(2^2 + 2^0)이 되어 읽기와 실행 권한이 설정됩니다.

<img width="428" alt="캡처" src="https://user-images.githubusercontent.com/121752791/230642277-dfbeef96-b312-4ef0-9879-f81bd28e0fc8.PNG">

# 11.
grep : 
 "grep"은 Linux나 Unix 기반 운영체제에서 특정 문자열을 검색하는 명령어입니다. 텍스트 파일이나 표준 입력(standard input)에서 특정 패턴이나 문자열을 검색하여 해당하는 줄(line)을 출력합니다.

<img width="364" alt="캡처" src="https://user-images.githubusercontent.com/121752791/230645059-684f458a-8bcc-437d-b937-4fc48318ea62.PNG">

# 11-2.
grep 명령어의 주요 옵션 : 
 -i: 대소문자를 구분하지 않고 검색합니다. 
 -v: 패턴과 일치하지 않는 줄(line)을 출력합니다. 
 -r: 디렉토리 내부의 모든 파일에서 검색합니다. 
 -n: 검색된 줄(line)의 줄번호를 함께 출력합니다. 
 -w: 정확하게 일치하는 단어만 출력합니다. 
 -E: 정규표현식을 사용합니다. 

# 12. 
find : 
 "find"는 Linux나 Unix 기반 운영체제에서 파일이나 디렉토리를 검색하는 명령어입니다. "find" 명령어를 사용하면 파일 이름, 크기, 수정 시간, 소유자 등 다양한 조건을 이용하여 파일이나 디렉토리를 검색할 수 있습니다.

<img width="420" alt="캡처" src="https://user-images.githubusercontent.com/121752791/230645621-83ca76c2-8abd-4d2a-8aca-0fc585a45bcd.PNG">

# 12-2.
find 명령어의 주요 옵션 : 
 -name: 파일 이름을 이용하여 검색합니다. 
 -type: 파일 타입을 지정하여 검색합니다. 
 -size: 파일 크기를 이용하여 검색합니다. 
 -mtime: 파일 수정 시간을 이용하여 검색합니다. 
 -user: 파일 소유자를 이용하여 검색합니다. 
