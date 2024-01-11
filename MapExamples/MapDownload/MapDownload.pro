#---------------------------------------------------------------------------------------
# @功能：      QT下载瓦片地图简单示例
# @编译器：     Desktop Qt 5.14.2 MSVC2017 64bit（也支持其它编译器）
# @Qt IDE：    D:/Qt/Qt5.14.2/Tools/QtCreator/share/qtcreator
#
# @开发者      mhf
# @邮箱       1603291350@qq.com
# @时间       2024-03-29 14:46:01
# @备注
#---------------------------------------------------------------------------------------

QT       += core gui network
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
DEFINES += QT_DEPRECATED_WARNINGS
SOURCES += \
    downloadinfo.cpp \
    downloadthread.cpp \
    formula.cpp \
    main.cpp \
    widget.cpp

HEADERS += \
    downloadinfo.h \
    downloadthread.h \
    formula.h \
    widget.h

FORMS += \
    widget.ui

#  定义程序版本号
VERSION = 1.0.0
DEFINES += APP_VERSION=\\\"$$VERSION\\\"

contains(QT_ARCH, i386){        # 使用32位编译器
DESTDIR = $$PWD/../bin          # 程序输出路径
}else{
DESTDIR = $$PWD/../bin64        # 使用64位编译器
}

# msvc >= 2017  编译器使用utf-8编码
msvc {
    greaterThan(QMAKE_MSC_VER, 1900){       # msvc编译器版本大于2015
        QMAKE_CFLAGS += /utf-8
        QMAKE_CXXFLAGS += /utf-8
    }else{
        message(msvc2015及以下版本在代码中使用【pragma execution_character_set("utf-8")】指定编码)
    }
}
