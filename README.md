# Github免费代理使用说明

# 程序说明

原理是利用github actions 和ssh 反向隧道穿透，每个月提供的2000分钟使用时长来构建一个免费的代理访问的代理。

####  脚本路径：

####  *.github/workflows/proxy.yml*

#### 脚本开发规范：

#### [github actions 开发规范](https://docs.github.com/cn/actions/using-workflows)

# 使用说明

#### 前提：

你需要拥有一个可以公开访问的SSH Server。

如果你没有公网服务器和IP也没有关系。可以使用[**花生壳**](https://hsk.oray.com/)，[**cpolar**](https://www.cpolar.com/))把自己本地电脑的SSH端口映射到公网。

例如使用coplar:

`PS C:\Users\dongy> cpolar.exe tcp 22`
`cpolar by @bestexpresser                                                                                                            (Ctrl+C to quit)                                                                                                                                                    Tunnel Status       online
Account             jimolove (Plan: Free)
Version             2.92/2.96
Web Interface       127.0.0.1:4042
Forwarding          tcp://1.tcp.cpolar.cn:24249 -> tcp://127.0.0.1:22                                                                                                         `

