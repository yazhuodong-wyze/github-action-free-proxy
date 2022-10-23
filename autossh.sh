#!/bin/bash
# macos下测试使用
# 执行之后在窗口中ctrl+c终止连接进程

PASS='x' #ssh登录密码
CMD=$@
BASE_CMD='/usr/local/bin/autossh' # autossh 执行路径
trap 'ps aux|grep "$BASE_CMD $CMD" |grep -v grep | awk "{print \$2}" | xargs kill &>/dev/null && echo "stop done.\n"' 2 # ctrl + c 按键后执行命令终止子进程

VAR=$(expect -c "
spawn $BASE_CMD $CMD
match_max 100000;

while (1) {
    # 匹配关键字password，之后发送密码
    expect \"*?password:*\" {send -- \"$PASS\r\"}

    # 下面的方式执行失败
    #set connectedFlag 0;
    # set timeout 60;
    # expect {
    #     '?sh: Error*'
    #         { puts 'CONNECTION_ERROR'; exit; }
    #     '*yes/no*'
    #         { send 'yes\r'; exp_continue; }
    #     '*?assword:*' {
    #          # send '$PASS\r'; set timeout 4;
    #          send -- \"$PASS\r\"
    #          expect '*?assword:*' { puts 'WRONG_PASSWORD'; exit; }
    #          set connectedFlag 1;
    #     }
    #     # if no password
    #     '*~*'
    #         { send 'echo hello\r'; set connectedFlag 1; }
    # }
}

")
echo "==============="
echo "$VAR"

tail -f /dev/null # 前台挂起主进程