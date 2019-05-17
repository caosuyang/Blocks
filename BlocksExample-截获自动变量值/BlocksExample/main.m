//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

 #import <Foundation/Foundation.h>
 

int main() {
    int dmy = 256;
    int val = 10;
    const char *fmt = "val = %d\n";
    
    void (^blk)(void) = ^{ printf(fmt, val); };
    blk();
    return 0;
}


//// C++ 源代码
//struct __block_impl {
//    void *isa;
//    int Flags;
//    int Reserved;
//    void *FuncPtr;
//};
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    const char *fmt;
//    int val;
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, const char *_fmt, int _val, int flags=0) : fmt(_fmt), val(_val) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    const char *fmt = __cself->fmt; // bound by copy
//    int val = __cself->val; // bound by copy
//    printf(fmt, val); }
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};
//int main() {
//    int dmy = 256;
//    int val = 10;
//    const char *fmt = "val = %d\n";
//
//    void (*blk)(void) = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, fmt, val));
//    ((void (*)(__block_impl *))((__block_impl *)blk)->FuncPtr)((__block_impl *)blk);
//    return 0;
//}




//struct __block_impl {
//    void *isa;
//    int Flags;
//    int Reserved;
//    void *FuncPtr;
//};
//
//// fmt, val 自动变量被作为成员变量追加到了 __main_block_impl_0 结构体中
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    const char *fmt;
//    int val;
//    
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, const char *_fmt, int _val, int flags=0) : fmt(_fmt), val(_val) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    const char *fmt = __cself->fmt; // bound by copy
//    int val = __cself->val; // bound by copy
//    printf(fmt, val);
//}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = {
//    0,
//    sizeof(struct __main_block_impl_0)
//};
//
//
//int main() {
//    int dmy = 256;
//    int val = 10;
//    const char *fmt = "val = %d\n";
//    
//    // 在初始化结构体实例时，根据传递给构造函数的参数对由自动变量追加的成员变量进行初始化。
//    void (*blk)(void) = &__main_block_impl_0(__main_block_func_0, &__main_block_desc_0_DATA, fmt, val);
//    
//    (*blk->FuncPtr)(blk);
//    return 0;
//}





//void func(char a[10]) {
//    printf("%d\n", a[0]);
//}
//
//int main () {
//    char a[10] = {2};
//    func(a);
//}


//void func(char a[10]) {
//    // Implicitly declaring library function 'printf' with type 'int (const c
//    // 将 C 语言数组类型变量赋值给 C 语言数组类型变量中，无法编译。
//    char b[10] = a;
//    printf("%d\n", b[0]);
//}
//
//int main() {
//    char a[10] = {2};
//    func(a);
//}
