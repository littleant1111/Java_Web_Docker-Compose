# 用途
仅用于项目测试环境使用

# 准备
下载需要的jdk包和tomcat包放进src中，并且修改对应的名字

# 使用说明
1.将`src`目录下的`OneCardSolution.war`替换为自己的包，只要放进`src`，并且进入dockerfile修改变量名为自己的项目会自动解压了。

2.修改电脑的`host`文件，加上
```
127.0.0.1   java.com
```
3.修改`conf/server.xml`中`docBase`这个选项最后的文件夹改成自己的包名，去除后缀名
> 如果需要配置其他的虚拟域名，修改`conf/server.xml`的即可，默认端口为8080