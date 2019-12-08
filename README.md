# AutoConnectCiscoVPN

一键自动链接Cisco AnyConnect Secure Mobility Client

### 使用方式

1. clone 项目
```
git clone git@github.com:gitlexin/AutoConnectCiscoVPN.git
```

2. 编辑对应版本的脚本文件内的配置,比如macos.scpt
```
set vpn_host to "** 修改为自己的vpn地址 **"
set vpn_username to "** 修改为自己的用户名 **"
set vpn_password to "** 修改为自己的密码 **"

以下代码无需改动
...
```

3. 使用命令行启动脚本
```
osascript /自己的路径/macos.scpt;
```
