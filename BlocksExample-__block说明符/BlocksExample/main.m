//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1 __block 说明符
//// 全局变量
//int global_val = 1;
//// 静态全局变量
//static int static_global_val = 2;
//
//int main() {
////    int val = 0;
////    // Variable is not assignable (missing __block type specifier)
////    void (^blk)(void) = ^{ val = 1; };
//
//    // 静态变量
//    static int static_val = 3;
//    void (^blk)(void) = ^{
//        global_val *= 1;
//        static_global_val *= 2;
//        static_val *=3;
//    };
//    return 0;
//}


//// C++源代码
//struct __block_impl {
//    void *isa;
//    int Flags;
//    int Reserved;
//    void *FuncPtr;
//};
//
//int global_val = 1;
//
//static int static_global_val = 2;
//
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    int *static_val;
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int *_static_val, int flags=0) : static_val(_static_val) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    int *static_val = __cself->static_val; // bound by copy
//
//    global_val *= 1;
//    static_global_val *= 2;
//    (*static_val) *=3;
//}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0)};
//int main() {
//
//
//
//
//
//    static int static_val = 3;
//    void (*blk)(void) = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, &static_val));
//    return 0;
//}



//int global_val = 1;
//static int static_global_val = 2;
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    int *static_val;
//
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int *_static_val, int flags=0) : static_val(_static_val) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//
//
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    int *static_val = __cself->static_val; // bound by copy
//
//    global_val *= 1;
//    static_global_val *= 2;
//    (*static_val) *=3;
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
//    // 使用静态变量 static_val 的指针对其进行访问，将静态变量 static_val 的指针传递给 __main_block_impl_0 结构体的构造函数并保存。
//    static int static_val = 3;
//
//    blk = &__main_block_impl_0(__main_block_func_0, &__main_block_desc_0_DATA, &static_val);
//
//    (*blk->FuncPtr)(blk);
//    return 0;
//}



// 2 __block 存储域类说明符 (__block storage-class-specifier)
//int main() {
//    __block int val = 10;
//    void (^blk)(void) = ^{ val = 1; };
//    blk();
//    return 0;
//}


//// C++ 源代码
//struct __Block_byref_val_0 {
//    void *__isa;
//    __Block_byref_val_0 *__forwarding;
//    int __flags;
//    int __size;
//    int val;
//};
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    __Block_byref_val_0 *val; // by ref
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, __Block_byref_val_0 *_val, int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//    (val->__forwarding->val) = 1; }
//static void __main_block_copy_0(struct __main_block_impl_0*dst, struct __main_block_impl_0*src) {_Block_object_assign((void*)&dst->val, (void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static void __main_block_dispose_0(struct __main_block_impl_0*src) {_Block_object_dispose((void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_0*, struct __main_block_impl_0*);
//    void (*dispose)(struct __main_block_impl_0*);
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0), __main_block_copy_0, __main_block_dispose_0};
//int main() {
//    __attribute__((__blocks__(byref))) __Block_byref_val_0 val = {(void*)0,(__Block_byref_val_0 *)&val, 0, sizeof(__Block_byref_val_0), 10};
//    void (*blk)(void) = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, (__Block_byref_val_0 *)&val, 570425344));
//    ((void (*)(__block_impl *))((__block_impl *)blk)->FuncPtr)((__block_impl *)blk);
//    return 0;
//}





//struct __Block_byref_val_0 {
//    void *__isa;
//    __Block_byref_val_0 *__forwarding;
//    int __flags;
//    int __size;
//    int val;
//};
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    __Block_byref_val_0 *val; // by ref
//
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, __Block_byref_val_0 *_val, int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    // Block 的 __main_block_impl_0 结构体实例持有指向 __Block 变量的 __Block_byref_val_0 结构体实例的指针
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//
//    // __Block_byref_val_0 结构体实例的成员变量 __forwarding 持有指向该实例自身的指针
//    (val->__forwarding->val) = 1;
//}
//
//static void __main_block_copy_0(struct __main_block_impl_0*dst, struct __main_block_impl_0*src) {
//    _Block_object_assign((void*)&dst->val, (void*)src->val, 8);
//}
//
//static void __main_block_dispose_0(struct __main_block_impl_0*src) {
//    _Block_object_dispose((void*)src->val, 8);
//}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_0*, struct __main_block_impl_0*);
//    void (*dispose)(struct __main_block_impl_0*);
//} __main_block_desc_0_DATA = {
//    0,
//    sizeof(struct __main_block_impl_0), __main_block_copy_0, __main_block_dispose_0
//};
//
//int main() {
//    __Block_byref_val_0 val = {
//        0,
//        &val,
//        0,
//        sizeof(__Block_byref_val_0),
//        10
//    };
//
//    blk = &__main_block_impl_0(__main_block_func_0,
//                               &__main_block_desc_0_DATA,
//                               (__Block_byref_val_0 *)&val,
//                               570425344);
//
//    (*blk->FuncPtr)(blk);
//    return 0;
//}



// 3 多个 Block 中使用 __block 变量
int main() {
    __block int val = 10;
    void (^blk0)(void) = ^{
        val = 0;
    };

    void (^blk1)(void) = ^{
        val = 1;
    };
    return 0;
}


//// C++源代码
//struct __Block_byref_val_0 {
//    void *__isa;
//    __Block_byref_val_0 *__forwarding;
//    int __flags;
//    int __size;
//    int val;
//};
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    __Block_byref_val_0 *val; // by ref
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, __Block_byref_val_0 *_val, int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//
//    (val->__forwarding->val) = 0;
//}
//static void __main_block_copy_0(struct __main_block_impl_0*dst, struct __main_block_impl_0*src) {_Block_object_assign((void*)&dst->val, (void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static void __main_block_dispose_0(struct __main_block_impl_0*src) {_Block_object_dispose((void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_0*, struct __main_block_impl_0*);
//    void (*dispose)(struct __main_block_impl_0*);
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0), __main_block_copy_0, __main_block_dispose_0};
//
//struct __main_block_impl_1 {
//    struct __block_impl impl;
//    struct __main_block_desc_1* Desc;
//    __Block_byref_val_0 *val; // by ref
//    __main_block_impl_1(void *fp, struct __main_block_desc_1 *desc, __Block_byref_val_0 *_val, int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_1(struct __main_block_impl_1 *__cself) {
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//
//    (val->__forwarding->val) = 1;
//}
//static void __main_block_copy_1(struct __main_block_impl_1*dst, struct __main_block_impl_1*src) {_Block_object_assign((void*)&dst->val, (void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static void __main_block_dispose_1(struct __main_block_impl_1*src) {_Block_object_dispose((void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static struct __main_block_desc_1 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_1*, struct __main_block_impl_1*);
//    void (*dispose)(struct __main_block_impl_1*);
//} __main_block_desc_1_DATA = { 0, sizeof(struct __main_block_impl_1), __main_block_copy_1, __main_block_dispose_1};
//int main() {
//    __attribute__((__blocks__(byref))) __Block_byref_val_0 val = {(void*)0,(__Block_byref_val_0 *)&val, 0, sizeof(__Block_byref_val_0), 10};
//    void (*blk0)(void) = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, (__Block_byref_val_0 *)&val, 570425344));
//
//    void (*blk1)(void) = ((void (*)())&__main_block_impl_1((void *)__main_block_func_1, &__main_block_desc_1_DATA, (__Block_byref_val_0 *)&val, 570425344));
//    return 0;
//}



//struct __Block_byref_val_0 {
//    void *__isa;
//    __Block_byref_val_0 *__forwarding;
//    int __flags;
//    int __size;
//    int val;
//};
//
//struct __main_block_impl_0 {
//    struct __block_impl impl;
//    struct __main_block_desc_0* Desc;
//    __Block_byref_val_0 *val; // by ref
//    __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, __Block_byref_val_0 *_val, int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_0(struct __main_block_impl_0 *__cself) {
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//
//    (val->__forwarding->val) = 0;
//}
//static void __main_block_copy_0(struct __main_block_impl_0*dst, struct __main_block_impl_0*src) {_Block_object_assign((void*)&dst->val, (void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static void __main_block_dispose_0(struct __main_block_impl_0*src) {_Block_object_dispose((void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static struct __main_block_desc_0 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_0*, struct __main_block_impl_0*);
//    void (*dispose)(struct __main_block_impl_0*);
//} __main_block_desc_0_DATA = { 0, sizeof(struct __main_block_impl_0), __main_block_copy_0, __main_block_dispose_0};
//
//struct __main_block_impl_1 {
//    struct __block_impl impl;
//    struct __main_block_desc_1* Desc;
//    __Block_byref_val_0 *val; // by ref
//    __main_block_impl_1(void *fp, struct __main_block_desc_1 *desc, __Block_byref_val_0 *_val, int flags=0) : val(_val->__forwarding) {
//        impl.isa = &_NSConcreteStackBlock;
//        impl.Flags = flags;
//        impl.FuncPtr = fp;
//        Desc = desc;
//    }
//};
//static void __main_block_func_1(struct __main_block_impl_1 *__cself) {
//    __Block_byref_val_0 *val = __cself->val; // bound by ref
//
//    (val->__forwarding->val) = 1;
//}
//static void __main_block_copy_1(struct __main_block_impl_1*dst, struct __main_block_impl_1*src) {_Block_object_assign((void*)&dst->val, (void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static void __main_block_dispose_1(struct __main_block_impl_1*src) {_Block_object_dispose((void*)src->val, 8/*BLOCK_FIELD_IS_BYREF*/);}
//
//static struct __main_block_desc_1 {
//    size_t reserved;
//    size_t Block_size;
//    void (*copy)(struct __main_block_impl_1*, struct __main_block_impl_1*);
//    void (*dispose)(struct __main_block_impl_1*);
//} __main_block_desc_1_DATA = { 0, sizeof(struct __main_block_impl_1), __main_block_copy_1, __main_block_dispose_1};
//
//
//int main() {
//    __Block_byref_val_0 val = {
//        0,
//        &val,
//        0,
//        sizeof(__Block_byref_val_0),
//        10};
//
//    // 两个 Block 都使用了 __Block_byref_val_0 结构体实例 val 的指针
//    // 可以从多个 Block 中使用同一个 __block 变量
//    blk0 = &__main_block_impl_0(__main_block_func_0,
//                                &__main_block_desc_0_DATA,
//                                (__Block_byref_val_0 *)&val,
//                                570425344);
//
//    blk1 = &__main_block_impl_1(__main_block_func_1,
//                                &__main_block_desc_1_DATA,
//                                (__Block_byref_val_0 *)&val,
//                                570425344);
//
//    return 0;
//}


