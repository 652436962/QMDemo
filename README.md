# QMDemo
Qt常用功能Demo

---

[toc]

---

## 1、说明

| 模块名           | 功能                               | 支持系统                |
| ---------------- | ---------------------------------- | ----------------------- |
| QMWidget         | 基于QWidget实现的自定义窗口模块    | windows                 |
| DeviceManagement | 串口、鼠标、键盘热插拔监测功能模块 | windows                 |
| QLog             | Qt日志系统                         | windows、linux、*mac*OS |
| QMPlayer         | 视频播放器界面                     | windows                 |
| TestCrashHandler | windows下程序崩溃定位Demo          | windows                 |



## 2、模块示例

### 2.1 QMWidget

* **实现功能**

  * 鼠标在标题栏移动窗口
  * 双击标题栏最大化、还原
  * 窗口移动到屏幕边界实现1/4屏、1/2屏、全屏显示
  * 最大化、最小化、退出按键
  * 鼠标在窗口边缘，四角拉伸缩放窗口
  * 任务栏标题名称设置
  * 独立标题栏模块，便于后续扩展

* **演示**

  ![QMWidget](README.assets/QMWidget.gif)



### 2.2 DeviceManagement

* **实现功能**

  * 通过继承**QAbstractNativeEventFilter**接口实现串口热插拔监测功能；
  * 通过在QWidget中重写**nativeEvent**实现串口热插拔监测功能；
  * 通过一个函数获取系统中所有可用串口名；
  * 自动添加、移除可用串口；
  * 鼠标、键盘热插拔监测。

* **演示**

  ![串口状态检测](README.assets/%E4%B8%B2%E5%8F%A3%E7%8A%B6%E6%80%81%E6%A3%80%E6%B5%8B.gif)

  ![鼠标键盘热插拔监测](README.assets/%E9%BC%A0%E6%A0%87%E9%94%AE%E7%9B%98%E7%83%AD%E6%8F%92%E6%8B%94%E7%9B%91%E6%B5%8B.gif)



### 2.3 QLog

* **实现功能**

  * 可选择日志显示到文本窗口并保存、不显示只保存两种使用方式；
  * 选择显示日志级别；
  * 可设置不同级别日志显示颜色；
  * 将日志信息保存到txt文本；
  * 支持按12小时、24小时、按文件大小、日志行数创建新日志文件；
  * 无任何第三方依赖，支持任意编译器，任意系统；
  * 保留日志存储接口、日志显示接口，便于后续扩展日志存储、显示方式，如存储到数据库等；
  * 模块完全基于QDebug，与程序所有功能基本0耦合，非常便于程序开发。

* **演示**

  ![QLog](README.assets/QLog.gif)

![log](README.assets/log.PNG)



### 2.4 QMPlayer

Qt实现的视频播放器界面Demo。

* **实现功能**
  * 基于QMWidget的自定义窗口；
  * 增加侧边栏模块；
  * 增加播放控制栏模块，包含播放停止、上一集、下一集、视频时间、音量控制、设置功能按键样式；
  * 增加进度条模块，可跳转到鼠标点击位置；
  * 通过`QPropertyAnimation`实现侧边栏、进度条、控制栏打开关闭动画效果；
  * 实现双击全屏显示、还原效果。
* **演示**

![QMPlayer](README.assets/QMPlayer.gif)



### 2.5 TestCrashHandler

**实现功能：**

* 通过win api实现qt程序崩溃问题定位功能；
* 只支持msvc编译器；
* 低耦合模块，一行代码直接引用功能，无需添加第三方依赖库；
* 根据时间生成dump文件，每次崩溃生成一个文件，避免了覆盖问题；
* 通过宏判断，在MinGW或其他系统环境编译时功能自动失效不会编译失败；
* 支持release模块下生成dump文件。

**演示：**

![Dump](README.assets/Dump.gif)
