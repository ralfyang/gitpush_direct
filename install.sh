#!/bin/bash
### Made by Ralf Yang
### goody80762@gmail.com

Exec_dir='/usr/local/bin'
check_file="/tmp/sudo_check.out"

sudo 2> $check_file

	if [[ `(grep "not found" $check_file)` = "" ]];then
		SUOD="sudo"
	else
		SUDO=""
	fi

curl -sL http://goody80.github.io/gitpush_direct/gitpush -o /tmp/gitpush
curl -sL http://goody80.github.io/gitpush_direct/gitpush-branch -o /tmp/gitpush-branch

$SUDO cp -f /tmp/gitpush $Exec_dir
$SUDO cp -f /tmp/gitpush-branch $Exec_dir
$SUDO chmod 755 $Exec_dir/gitpush $Exec_dir/gitpush-branch
rm -f /tmp/gitpush /tmp/gitpush-branch
