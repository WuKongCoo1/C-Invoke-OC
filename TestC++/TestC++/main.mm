//
//  main.m
//  TestC++
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "MyCPPClass.hpp"
#import "MyObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        MyObject *object = [[MyObject alloc] init];
        MyCPPClass *c = new MyCPPClass();
        c->setSelf((__bridge void *)object);
        int a = 12;
        int result = c->someMethod((__bridge void *)object, &a);
        NSLog(@"%d", result);
    }
    return 0;
}
