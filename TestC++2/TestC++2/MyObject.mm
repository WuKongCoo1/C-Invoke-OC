//
//  MyObject.m
//  TestC++2
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#import "MyObject.h"
#include "MyObject-C-Interface.h"

typedef void(^RetainSelfBlock)(void);

@implementation MyObject
{
    RetainSelfBlock _retainBlock;//通过这个block持有对象，造成循环引用，避免被释放
}
MyClassImpl::MyClassImpl( void )
: self( NULL )
{
    
}

MyClassImpl::~MyClassImpl( void )
{
    [(__bridge id) self breakRetainCycly];
}

void MyClassImpl::init( void )
{
    MyObject *object = [[MyObject alloc] init];
    object->_retainBlock = ^{//循环引用
        [object class];
    };
    
    self = (__bridge void *)object;
    
    NSLog(@"%p", self);
}

int MyClassImpl::doSomethingWith( void *aParameter )
{
    NSLog(@"%p", self);
    return [(__bridge id)self doSomethingWith:aParameter];
}

void MyClassImpl::logMyMessage( char *aCStr )
{
    [(__bridge id)self logMyMessage:aCStr];
}

- (int) doSomethingWith:(void *) aParameter
{
    int result = 0;
    
    // ... some code to calculate the result
    
    return result;
}

- (void) logMyMessage:(char *) aCStr
{
    NSLog( @"%s", aCStr );
}

//打破循环引用，释放对象
- (void) breakRetainCycly
{
    _retainBlock = nil;
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
}
@end





