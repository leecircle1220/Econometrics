#!/bin/bash

# 用法: ./import-overleaf.sh <來源資料夾> <目的地路徑（相對於 repo 根目錄）>
# 範例1: ./import-overleaf.sh ~/Downloads/T2-MCQs-ans crash-course/T2-MCQs-ans
# 範例2: ./import-overleaf.sh ~/Downloads/HW3 homework/HW3
# 範例3: ./import-overleaf.sh ~/Downloads/Notes-Ch5 notes/chapter5

set -e

SOURCE=$1
DEST=$2

if [ -z "$SOURCE" ] || [ -z "$DEST" ]; then
    echo "用法: ./import-overleaf.sh <來源資料夾> <目的地路徑>"
    echo "範例: ./import-overleaf.sh ~/Downloads/T2-MCQs-ans crash-course/T2-MCQs-ans"
    exit 1
fi

if [ ! -d "$SOURCE" ]; then
    echo "錯誤: 來源資料夾不存在: $SOURCE"
    exit 1
fi

echo "建立目的地資料夾: $DEST"
mkdir -p "$DEST"

echo "同步檔案 (排除 .git 和 .DS_Store)..."
rsync -av --exclude='.git' --exclude='.DS_Store' "$SOURCE/" "$DEST/"

echo "完成，檔案已放入: $DEST"
echo ""
ls -la "$DEST"
