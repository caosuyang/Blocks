# Blocks
Pro Multithreading and Memory Management for iOS and OS X

- 将 Objective-C 代码转换为 C\C++ 代码，分析 Objective-C 语言中 Block 的本质

## 将 Objective-C 代码转换为 C\C++ 代码

```
xcrun  -sdk  iphoneos  clang  -arch  arm64  -rewrite-objc  OC源文件  -o  输出的CPP文件
如果需要链接其他框架，使用-framework参数。比如-framework UIKit
```

## 项目结构

1. block的本质和底层结构
2. block的变量捕获（capture）
3. block的类型 和 block的copy
4. __block修饰符本质和底层结构
5. __block修饰符的内存管理问题
6. block 循环引用问题

## 遇到的问题

### __weak问题解决

1. 在使用clang转换OC为C++代码时，可能会遇到以下问题

```
cannot create __weak reference in file using manual reference
```

解决方案：支持ARC、指定运行时系统版本，比如

```
xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc -fobjc-arc -fobjc-runtime=ios-8.0.0 main.m
```
