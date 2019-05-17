//
//  BlockArray.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/30.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import "BlockArray.h"

@implementation BlockArray

- (id)getBlockArray {
    int val = 10;
    return [[NSArray alloc] initWithObjects:
            ^{ NSLog(@"blk0: %d", val); },
            ^{ NSLog(@"blk0: %d", val); }, nil];
}

@end
