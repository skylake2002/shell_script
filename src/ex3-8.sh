#!/bin/bash

# DB.txt 파일이 존재하지 않으면 새로 생성
DB_FILE="DB.txt"

# DB.txt가 없으면 새로 생성하고 기록
if [ ! -f "$DB_FILE" ]; then
    echo "DB.txt 파일이 존재하지 않아 새로 생성합니다."
    touch "$DB_FILE"
fi

# 사용자에게 데이터 추가 방법 선택
echo "1. 새로 작성 (기존 데이터 덮어쓰기)"
echo "2. 기존 데이터에 추가"
read -p "선택 (1 또는 2): " action

# 사용자 선택에 따라 작업 수행
if [ "$action" -eq 1 ]; then
    > "$DB_FILE"  # DB.txt를 비워서 덮어쓰기
    echo "기존 데이터를 덮어씁니다."
elif [ "$action" -eq 2 ]; then
    echo "기존 데이터에 정보를 추가합니다."
else
    echo "잘못된 입력입니다."
    exit 1
fi

# 팀원 정보 입력받기
read -p "팀원의 이름을 입력하세요: " name
read -p "팀원의 생일(YYYY-MM-DD) 또는 전화번호를 입력하세요: " info

# DB.txt에 정보 추가
echo "$name $info" >> "$DB_FILE"
echo "팀원 정보가 추가되었습니다."

exit 0
