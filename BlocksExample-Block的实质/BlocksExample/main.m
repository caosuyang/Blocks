//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//


#import <Foundation/Foundation.h>
int main() {
    void (^blk)(void) = ^{ printf("Block\n"); };
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
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int flags=0) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    printf("Block\n"); }
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};
//int main() {
//    void (*blk)(void) = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA));
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
//// struct __main_block_impl_0 {
//// void *isa                        = &_NSConcreteStackBlock;
//// int Flags                        = 0;
//// int Reserved                     = 0;
//// void *FuncPtr                    = __main_block_func_0;
//// struct __main_block_desc_0* Desc = &__main_block_desc_0_DATA;
//// };
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//
//    // 初始化含有这些结构体的 __main_block_impl_0 结构体的构造函数
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int flags=0) {
//        impl.isa = &_NSConcreteStackBlock; // _NSConcreteStackBlock 用于初始化 __block_impl                                    结构体的 isa 成员
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//
//// __cself 指向 __main_block_impl_0 这个 struct
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    printf("Block\n");
//}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;    //Block 的大小
//} __main_block_desc_0_DATA = {
//    0,
//    sizeof(struct __main_block_impl_0)
//};
//
//int main(int argc, const char * argv[]) {
//    { __AtAutoreleasePool __autoreleasepool;
////        void (*blk)(void) =
////             ((void (*)())&__main_block_impl_0(
////                  (void *)__main_block_func_0, &__main_block_desc_0_DATA));
//
//        // 将 __main_block_impl_0 结构体类型的自动变量，即栈上生成的 __main_block_impl_0 结构体实例的指针(tmp)，赋值给 __main_block_impl_0 结构体指针k类型的变量 blk。
//        // __main_block_func_0：由 Block 语法 转换的 C 语言函数指针
//        // &__main_block_desc_0_DATA：作为静态全局变量初始化的 __main_block_desc_0 结构体实例指针
//        // static struct __main_block_desc_0 __main_block_desc_0_DATA = {
//        // 0,
//        // sizeof(struct __main_block_impl_0)
//        //};
//        struct __main_block_impl_0 tmp = __main_block_impl_0(__main_block_func_0, &__main_block_desc_0_DATA);
//        struct __main_block_impl_0 *blk = &tmp;
//
//
////        ((void (*)(__block_impl *))(
////             (__block_impl *)blk)->FuncPtr)((__block_impl *)blk);
//
//        // 由 Block 语法转换的 __main_block_func_0 函数的指针被赋值成员变量 FuncPtr 中
//        // __main_block_func_0 函数的参数 __cself 指向 Block 值。
//        (*blk->FuncPtr)(blk);
//    }
//    return 0;
//}


