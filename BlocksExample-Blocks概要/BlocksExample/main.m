//
//  main.m
//  BlocksExample
//
//  Created by 曹素洋 on 2019/4/28.
//  Copyright © 2019 caosuyang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottonCallbackObject.h"

#define BUTTON_MAX 10
#define BUTTON_IDOFFSET 5


//int buttonId = 0;
//void buttonCallback(int event) {
//    printf("buttonId: %d event= %d\n", buttonId, event);
//}


//int buttonId;
//void buttonCallback(int event) {
//    printf("buttonId: %d event= %d\n", buttonId, event);
//}
//
//void setButtonCallbacks() {
//    for (int i = 0; i < BUTTON_MAX; ++i) {
//        buttonId = i;
//        // :-1: Undefined symbol: _setButtonCallback
//        setButtonCallback(BUTTON_IDOFFSET + i, &buttonCallback);
//    }
//}



void buttonCallback(int buttonId, int event) {
    printf("buttonId: %d event= %d\n", buttonId, event);
}


//void setButtonCallbacks() {
//    for (int i = 0; i < BUTTON_MAX; ++i) {
//        BottonCallbackObject *callbackObj = [[BottonCallbackObject alloc] initWithButtonId:i];
//        // :-1: Undefined symbol: _setButtonCallbackUsingObject
//        setButtonCallbackUsingObject(BUTTON_IDOFFSET, callbackObj);
//    }
//}


//void setButtonCallbacks() {
//    for (int i = 0; i < BUTTON_MAX; ++i) {
//        // :-1: Undefined symbol: _setButtonCallbackUsingBlock
//        setButtonCallbackUsingBlock(BUTTON_IDOFFSET + i, ^(int event) {
//            printf("buttonId: %d event= %d\n", i, event);
//        });
//    }
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        // :-1: Undefined symbol: _func
//        int func(int count);
//        int result = func(10);

        
//        // Use of undeclared identifier 'funcptr'
//        int result = (*funcptr)(10);

        
//        // :-1: Undefined symbol: _func
//        int (*funcptr)(int) = &func;
//        int result = (*funcptr)(10);


//        buttonCallback(10);
        
        
        buttonCallback(2, 10);
        
        
    }
    return 0;
}
