//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import <Foundation/Foundation.h>

// Block 类型变量
//int func(int count) {
//    return count + 1;
//}


//void func(int (^blk)(int)) {
//
//}


//// Block pointer to non-function type is invalid
//// Returning 'int (^)(int)' from a function with incompatible result type 'int (int)'
//int (^func()(int)) {
//    return ^(int count) { return count + 1; };
//}


///* 原来的记述方式
// void func(int (^blk)(int))
// */
//// Unknown type name 'blk_t'
//void func(blk_t blk) {
//
//}
//
///* 原来的记述方式
// int (^func()(int))
// */
//// Unknown type name 'blk_t'
//blk_t func() {
//
//}


//// Unknown type name 'blk_t'
//int func(blk_t blk, int rate) {
//    return blk(rate);
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Block 语法
//        int i = 10;
//        ^(int event) {
//            printf("buttonId: %d event= %d\n", i, event);
//        };
        

//        int i = 20;
//        ^void (int event) {
//            printf("buttonId: %d event= %d\n", i, event);
//        };
        
        
//        ^int (int count) { return count + 1; };
        
        
//        ^(int count) { return count + 1; };
        
        
//        ^void (void) { printf("Blocks\n"); };
        
        
//        ^() { printf("Blocks\n"); };
        
    
        
        // Block 类型变量
//        int (*funcptr)(int) = &func;
        
        
//        int (^blk)(int);
        
        
//        int (^blk)(int) = ^(int count) { return count + 1; };
        
        
//        int (^blk)(int);
//        int (^blk1)(int) = blk;
//        int (^blk2)(int);
//        blk2 = blk1;


//        typedef int (^blk_t)(int);
        
        
//        // Too few arguments to function call, expected 5, have 1
//        int result = (*funcptr)(10);
        
        
//        // :-1: Undefined symbol: _blk
//        int result = blk(10);
        
    
//        typedef int (^blk_t)(int);
//        blk_t blk = ^(int count) { return  count + 1; };
//        blk(1);
//        NSLog(@"blk is %d", blk(1));
        
//        // Pointer to non-const type 'blk_t' (aka 'int (^)(int)') with no explicit ownership
//        blk_t *blkptr = &blk;
//        (*blkptr)(10);

        
        

        // 截获自动变量值
//        int dmy = 10;
//        int val = 20;
//        const char *fmt = "val = %d\n";
//        void (^blk)(void) = ^ {printf(fmt, val); };
//
//        val = 2;
//        fmt = "These values were changed. val = %d\n";
//        blk();
        
        
        

        // __block 说明符
//        int val = 0;
//        // Variable is not assignable (missing __block type specifier)
//        void (^blk)(void) = ^{ val = 1; };
//        blk();
//        printf("val = %d\n", val);
        
    
//        __block int val = 0;
//        void (^blk)(void) = ^{ val = 1; };
//        blk();
//        printf("val = %d\n", val);

        
        

        // 截获的自动变量
//        int val = 0;
//        // Variable is not assignable (missing __block type specifier)
//        void (^blk)(void) = ^{ val = 1; };
        
        
//        id array = [[NSMutableArray alloc] init];
//        void (^blk)(void) = ^{
//            id obj = [[NSObject alloc] init];
//            [array addObject:obj];
//        };

        
//        id array = [[NSMutableArray alloc] init];
//        // Variable is not assignable (missing __block type specifier)
//        void (^blk)(void) = ^{
//            array = [[NSMutableArray alloc] init];
//        };

        
//        __block id array = [[NSMutableArray alloc] init];
//        void (^blk)(void) = ^{
//            array = [[NSMutableArray alloc] init];
//        };
        
        
//        const char text[] = "hello";
//        // Cannot refer to declaration with an array type inside block
//        void (^blk)(void) = ^{
//            printf("%c\n", text[2]);
//        };

        
        const char *text = "hello";
        void (^blk)(void) = ^{
            printf("%c\n", text[2]);
        };
        blk();
    }
    return 0;
}


