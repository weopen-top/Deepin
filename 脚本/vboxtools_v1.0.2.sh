#!/bin/bash
#日期：2020-05-10 21:21
#功能：简化vbox命令操作，方便vbox虚拟机使用。
#--------------------------------------
if [ ! -f /usr/local/bin/vbox ];then
    sudo cp $0 /usr/local/bin/vbox &> /dev/null
    sudo chown $USER:$USER /usr/local/bin/vbox
    sudo chmod +x /usr/local/bin/vbox
    echo "vbox命令安装成功！"
else
    case "$1" in
    list)
            echo "-----------------【查看虚拟机】-----------------"
            echo "已安装的虚拟机："
            vboxmanage list vms
            echo "------------------------------------------------"
            echo "正在运行的虚拟机："
            vboxmanage list runningvms
            echo "------------------------------------------------"
    ;;
    start)
    	vboxmanage startvm $2 --type headless
    ;;
    stop)
    	vboxmanage controlvm $2 poweroff
    ;;
    uninstall)
        sudo rm -rf /usr/local/bin/vbox
    ;;
    --help)
    echo "    日期：2020-05-10 21:21
    功能：简化vbox命令操作，方便vbox虚拟机使用。
    格式：`basename $0` 选项 参数
    选项：start      后台打开运行虚拟机
          stop      停止运行虚拟机
          list      查看虚拟机
          uninstall 卸载命令"
    ;;
    *)
    	echo $"用法：`basename $0` {start|stop} 虚拟机;`basename $0` {show|--help}。"
    ;;
    esac
fi
