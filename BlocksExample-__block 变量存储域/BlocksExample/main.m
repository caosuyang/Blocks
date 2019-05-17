//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
    __block int val = 0;
    void (^blk)(void) = ^{ ++val; }
    ++val;
    blk();
    NSLog(@"%d", val);
    return 0;
}


// C++源代码
