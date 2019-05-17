//
//  BottonCallbackObject.h
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BottonCallbackObject : NSObject
{
    int buttonId_;
}

- (id)initWithButtonId:(int)buttonId;
//- (void)callback:(int)event;

@end

NS_ASSUME_NONNULL_END
