//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlockArray.h"

//// 1
//// impl.isa = &_NSConcreteGlobalBlock;
//void (^blk0)(void) = ^{ printf("Global Block\n"); };


//// 4
//typedef int (^blk_t)(int);
//blk_t func(int rate) {
//    // error: returning block that lives on the local stack
//    return ^(int count){ return  rate * count; };
//}


int main() {
//    // 2
//    typedef int (^blk_t)(int);
//    for (int rate = 0; rate < 10; ++rate) {
//        blk_t blk = ^(int count){ return rate * count; };
//    }
    
    
    // 3
    typedef int (^blk_t)(int);
    for (int rate = 0; rate < 10; ++rate) {
        blk_t blk = ^(int count){ return count; };
    }
    
//    // 5
//    id obj = getBlockArray();
//    typedef void (^blk_t)(void)；
//    blk_t blk = (blk_t)[obj objectAtIndex:0];
//    blk();
    
    
//    int rate = 4;
//    // blk_t = &__main_block_impl_0(__main_block_func_0, &__main_block_desc_0_DATA, rate);
//    int (^blk_t)(int) = ^(int count){ return  rate * count; };
    
    return 0;
}


//// C++源代码
//// 1
//struct __blk0_block_impl_0 {
//    struct __block_impl impl;
//    struct __blk0_block_desc_0* Desc;
//    __blk0_block_impl_0(void *fp, struct __blk0_block_desc_0 *desc, int flags=0) {
//        impl.isa = &_NSConcreteGlobalBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __blk0_block_func_0(struct __blk0_block_impl_0 *__cself) {
//    printf("Global Block\n"); }
//
//static struct __blk0_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __blk0_block_desc_0_DATA = { 0, sizeof(struct __blk0_block_impl_0)};
//static __blk0_block_impl_0 __global_blk0_block_impl_0((void *)__blk0_block_func_0, &__blk0_block_desc_0_DATA);
//void (*blk0)(void) = ((void (*)())&__global_blk0_block_impl_0);
//int main() {
//    return 0;
//}


//// 2
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    int rate;
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int _rate, int flags=0) : rate(_rate) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static int __main_block_func_0(struct __main_block_impl_0 *__cself, int count) {
//    int rate = __cself->rate; // bound by copy
//    return rate * count; }
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};
//int main() {
//    typedef int (*blk_t)(int);
//    for (int rate = 0; rate < 10; ++rate) {
//        blk_t blk = ((int (*)(int))&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, rate));
//    }
//    return 0;
//}


//// 3
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
//static int __main_block_func_0(struct __main_block_impl_0 *__cself, int count) {
//    return count; }
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};
//int main() {
//    typedef int (*blk_t)(int);
//    for (int rate = 0; rate < 10; ++rate) {
//        blk_t blk = ((int (*)(int))&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA));
//    }
//    
//    
//    
//    
//    
//    return 0;
//}
