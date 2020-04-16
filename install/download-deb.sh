#!/bin/bash

echo "download deb to path: $1"

echo "######## start to download chrome ########"
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P $1
echo "######## complete to download chrome ########"

echo "######## start to download GitKraken ########"
wget -c https://release.gitkraken.com/linux/gitkraken-amd64.deb -P $1
echo "######## complete to download GitKraken ########"

echo "######## start to download VS Code ########"
wget -c https://vscode.cdn.azure.cn/stable/a9f8623ec050e5f0b44cc8ce8204a1455884749f/code_1.44.1-1586789296_amd64.deb -P $1
echo "######## complete to download VS Code ########"

echo "######## start to download VirtualBox ########"

echo "######## complete to download VirtualBox ########"

