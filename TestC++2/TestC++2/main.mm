//
//  main.m
//  TestC++2
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

//#import <Foundation/Foundation.h>
#include "MyCPPClass.hpp"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyCPPClass *temp = new MyCPPClass();
        temp->init();
        temp->doSomethingWithMyClass();
        delete temp;
    }
    return 0;
}
