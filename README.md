# Github免费代理使用说明

# 程序说明

原理是利用Github Actions 和SSH 反向隧道穿透，每个月提供的2000分钟使用时长来构建一个免费的代理访问的代理。网速很慢，临时使用可以。

####  脚本路径：

####  *.github/workflows/proxy.yml*

#### 脚本开发规范：

#### [Github Actions 开发规范](https://docs.github.com/cn/actions/using-workflows)

# 使用说明

#### 前提：

你需要拥有一个可以公开访问的SSH Server。

如果你没有公网服务器和IP也没有关系。可以使用[**花生壳**](https://hsk.oray.com/)，[**cpolar**](https://www.cpolar.com/))把自己本地计算机的SSH端口映射到公网。

例如使用coplar:

`PS C:\Users\dongy> cpolar.exe tcp 22`  

Tunnel Status       online  

Account             hihi(Plan: Free)  
Version             2.92/2.96  
Web Interface       127.0.0.1:4042  
Forwarding          tcp://1.tcp.cpolar.cn:24249 -> tcp://127.0.0.1:22           

使用ssh client调试好的你的ssh密钥可以自动登录你的本地计算机，利用ssh-keygen生成公钥私钥，利用ssh-copy-id上传公钥。[[上传公钥实现ssh登录 (jianshu.com)](https://www.jianshu.com/p/44f4b7353249)](https://www.jianshu.com/p/44f4b7353249)

调试完成后，你应该生成`id_rsa``id_rsa.pub``known_hosts`,注意保存好。  

#### 开始使用：

Fork 当前仓库，设置仓库为`private`。  

修改secrets目标下的3个文件，使用你自己的文件替换。  

点击仓库 `Actions`  ，再点击左侧的`All workflows proxy`,再运行右侧`Run workflow`。  

点击进去详细信息你将会看到  

---



Created symlink /etc/systemd/system/multi-user.target.wants/tinyproxy.service → /lib/systemd/system/tinyproxy.service.

[57](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:57)Processing triggers for man-db (2.9.1-1) ...

[58](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:58)Processing triggers for systemd (245.4-4ubuntu3.18) ...

[59](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:59)下载必要组件完成

[60](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:60)启动代理完成

[61](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:61)密钥拷贝完成

[62](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:62)隧道打通完成,不使用时，请及时 workflow cancel,一个自然月2000分钟,节省资源

[63](https://github.com/yazhuodong-wyze/github-action-free-proxy/actions/runs/3307471453/jobs/5459128146#step:3:63)Warning: Permanently added the ED25519 host key for IP address '[103.46.128.44]:11626' to the list of known hosts.

---

再次查看你的本机计算机的网络连接，你应该可以看到一条127.0.0.1:8888的端口监听。  

使用时，需要把代理IP和端口配置到这里。  

不使用或者掉线，请在github workflow cancel job或者 re-job。





​                                                            

  

