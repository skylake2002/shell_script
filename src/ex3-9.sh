#!/bin/bash

# DB.txt 파일
DB_FILE="DB.txt"

# 사용자에게 검색할 이름 입력 받기
read -p "검색할 팀원의 이름을 입력하세요: " search_name

# DB.txt에서 해당 이름으로 정보 검색
grep -i "$search_name" "$DB_FILE"

if [ $? -eq 0 ]; then
    echo "$search_name 팀원의 정보가 검색되었습니다."
else
    echo "$search_name 팀원의 정보가 DB에 없습니다."
fi

exit 0
