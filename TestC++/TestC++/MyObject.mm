//
//  MyObject.m
//  TestC++InvokeOC
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

int MyObjectDoSomethingWith (void *self, void *aParameter)
{
    // 通过将self指针桥接为oc 对象来调用oc方法
    return [(__bridge id)self doSomethingWith:aParameter];
}

- (int) doSomethingWith:(void *) aParameter
{
    //将void *指针强转为对应的类型
    int* param = (int *)aParameter;
    return *param / 2 ;
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

@end
