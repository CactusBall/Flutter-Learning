# Flutter-Learning

# 环境搭建

## Windows 下搭建
安装Git for Windows、Android Studio、JDK

### 获取Flutter SDK
打开git bash，输入命令`git clone -b beta https://github.com/flutter/flutter.git`，添加flutter/bin到环境变量中

PS:如果很慢，把github.com的ip写到hosts里面去，测延迟去站长之家

配置系统变量：把flutter/bin目录的完整路径添加到系统path变量下
新建用户变量：变量名PUB_HOSTED_URL，变量值`https://pub.flutter-io.cn`，新建变量名FLUTTER_STORAGE_BASE_URL，变量值`https://storage.flutter-io.cn`

重启Windows

- 运行flutter doctor，会下载必要的包
- Android Studio 安装flutter插件

## Linux 下搭建
安装Android Studio、JDK

### 获取Flutter SDK
打开git bash，输入命令
```
git clone -b beta https://github.com/flutter/flutter.git
export PUB_HOSTED_URL=https://pub.flutter-io.cn //国内用户需要设置
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn //国内用户需要设置
export PATH=`pwd`/flutter/bin:$PATH
```
PS:如果很慢，把github.com的ip写到hosts里面去，测延迟去站长之家

- 运行flutter doctor，会下载必要的包
- Android Studio 安装flutter插件

## Mac 下搭建
没Mac，不记录

# 基本控件
## Container
一个拥有绘制、定位、调整大小的 widget

**中文博客笔记：**

[Container 属性详解](https://juejin.im/post/5b3c27a3e51d4519475ee8d8)

[Flutter Widgets: Container](https://juejin.im/entry/5b0425256fb9a07a99193162)

**英文博客笔记：**

[Container Cheat Sheet](https://medium.com/jlouage/container-de5b0d3ad184)

[Layout Cheat Sheet](https://proandroiddev.com/flutter-layout-cheat-sheet-5363348d037e)


##  FittedBox、AspectRatio、ConstrainedBox

[FittedBox、AspectRatio、ConstrainedBox详解](https://juejin.im/post/5b2d04eef265da59951fe796)
