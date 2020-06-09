#! /bin/bash
. ./objdumpCc.sh
. ./objdumpEe.sh
. ./objdumpHelp.sh
. ./objdumpError.sh
while getopts ":c:e:h:" opt
do
        case $opt in
                c)
                  objdumpCc $OPTARG
                  ;;
                e)
                  objdumpEe $OPTARG
                  ;;
                h)
                  objdumpHelp
                  ;;
                *)
                  objdumpError
                  echo "Unkonw parameter!"
                  objdumpHelp
                  exit 0
                  ;;
        esac
done
