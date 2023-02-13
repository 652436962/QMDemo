# Qt线程和并发编程示例

[toc]

---

## 1、说明

|    类名     | 功能                                                         |
| :---------: | ------------------------------------------------------------ |
| UseQThread1 | Qt通过【实例化】QThread，使用moveToThread将QObject子类槽函数在子线程中执行 |
| UseQThread2 | Qt通过子类化，继承QThread，重写run实现子线程                 |
|             |                                                              |
|             |                                                              |

 


## 2、相关博客

|                           相关博客                           |
| :----------------------------------------------------------: |
| 👉[CSDN]()👈 |




## 3、实现效果

### 1.1 UseQThread1

> 1. Qt通过实例化QThread，使用moveToThread将QObject子类槽函数在子线程中执行；
> 1. 分别实现了将线程封装在类内部的和在类外部指定线程两种方式；
> 1. 演示了正确创建线程和退出线程的方式   ，避免出现僵尸线程或者卡死情况。                

![UseQThread1-tuya](ConcurrentExamples.assets/UseQThread1-tuya.gif)



### 2、UseQThread2

> 1. Qt通过子类化，继承QThread，重写run实现子线程；
> 2. 演示了线程的简单使用和正确退出的方式。

![UseQThread2-tuya](ConcurrentExamples.assets/UseQThread2-tuya.gif)
