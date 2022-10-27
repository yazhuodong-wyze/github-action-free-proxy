# 说明

利用[GitHub Actions](https://docs.github.com/cn/actions/using-workflows) 和 [Cpolar](https://i.cpolar.com/m/4DDq)，进行每月2000分钟的代理访问。只需要使用邮箱申请一个[Cpolar](https://i.cpolar.com/m/4DDq)，然后Fork本仓库，配置一下GitHub Secrets，0代码，不需要安装任何附加软件。
# 如何使用

### 1.Fork 当前仓库。  
### 2.使用邮箱注册[Cpolar](https://i.cpolar.com/m/4DDq)。  
### 3.复制 [Cpolar](https://i.cpolar.com/m/4DDq) Authtoken。  
![image](https://s1.ax1x.com/2022/10/27/xhuSSg.png)  
### 4.找到Fork好的仓库的GitHub Secrets。  
![image](https://s1.ax1x.com/2022/10/27/xhu9yj.png)  
### 5.`New repository secret`,复制 [Cpolar](https://i.cpolar.com/m/4DDq) Authtoken 到 Actions secrets，Name必须使用 `CPOLAR_AUTHTOKEN`   
![image](https://s1.ax1x.com/2022/10/27/xhK8Ds.png)  
### 6.运行 代理 GitHub Actions。  
![image](https://s1.ax1x.com/2022/10/27/xhMyQg.png)  
### 7.在 [Cpolar](https://i.cpolar.com/m/4DDq) 上找到代理地址，找到地区是`us`(如果找不到请取消GitHub Action,重新运行)。  
![image](https://s1.ax1x.com/2022/10/27/xhMsSS.png)  
### 8.使用你的代理。  
![image](https://s1.ax1x.com/2022/10/27/xhuplQ.png)   
### 9.取消GitHub Actions(一个月默认2000分钟)。  
![image](https://s1.ax1x.com/2022/10/27/xhuCOs.png)  
