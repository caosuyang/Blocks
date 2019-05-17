//
//  BottonCallbackObject.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import "BottonCallbackObject.h"

@implementation BottonCallbackObject

- (id)initWithButtonId:(int)buttonId {
    self = [super init];
    buttonId_ = buttonId;
    return self;
}

- (void)callback:(int)event {
    NSLog(@"buttonId: %d event= %d\n", buttonId_, event);
}

@end
