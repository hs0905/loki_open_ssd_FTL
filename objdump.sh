#!/bin/bash

# 스크립트 사용법을 출력하는 함수
usage() {
    echo "Usage: $0 <output-text-file-name>"
    exit 1
}

# 인자의 개수 확인
if [ "$#" -ne 1 ]; then
    usage
fi

# 변수에 인자 저장
OUTPUT_FILE=$1

# riscv64-unknown-elf-objdump 명령어 실행 및 출력을 파일에 리다이렉트
/home/mingeon/GEMMINI/chipyard/esp-tools-install/bin/riscv64-unknown-elf-objdump -d ftl_ariane.elf > $OUTPUT_FILE

echo "Output saved to $OUTPUT_FILE"