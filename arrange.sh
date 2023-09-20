#!/bin/bash

# 스크립트를 실행하는 현재 디렉토리
current_dir=/home/workspace/SWE_2021_41_2023_2_week_4-main

# 'files' 폴더 내부의 파일들에 대한 루프
for file in "$current_dir/files"/*; do
    # 파일이 실제 파일인지 확인
    if [ -f "$file" ]; then
        # 파일명의 첫 글자 가져오기
        first_char=$(basename "$file" | cut -c1)

        # 대상 폴더 생성 (첫 글자로 된 폴더 이름)
        dest_dir="$current_dir/$first_char"

        # 파일 이동
        mv "$file" "$dest_dir"
    fi
done





