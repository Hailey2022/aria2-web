#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin:/sbin
export PATH

function perpare(){
    mkdir -p /aria2/webui
    mkdir -p /aria2/download
	apt-get update
}

function install_aria2(){
    apt-get install -y aria2
}

function install_file_browser(){
    curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
    filebrowser -r /aria2/download
}

function install_aria2_web(){
    # TODO: download aria2-web
}

function main(){
    perpare
    install_file_browser
    install_aria2_web
}

main