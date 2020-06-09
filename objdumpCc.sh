#!/bin/bash
. ./objdumpError.sh
. ./objdumpFinish.sh
objdumpCc(){
	echo "开始执行..."
	echo "调用objdumpCc"
	testfile=$OPTARG
	firstfile=${testfile%.*}
	lastfile=${testfile##*.}
	echo "获取参数: $testfile"
	echo "文件前缀: $firstfile"
	echo "文件后缀: $lastfile"
	if [[ "$lastfile"x = "cpp"x || "$lastfile"x = "c"x ]]
	then
		dirc1='g++ $testfile -o $firstfile'
		dirc2='objdump -d $firstfile >>$firstfile.txt'
		objdumpFinish
		echo "$testfile反汇编成功"
		echo "输出的文件: $firstfile.txt"
	else
		objdumpError
		echo "ERROR:程序异常!!!请放入c/cpp文件"
	fi
}

