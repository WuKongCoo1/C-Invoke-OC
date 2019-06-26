//
//  MyCPPClass.cpp
//  TestC++InvokeOC
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#include "MyCPPClass.hpp"
#include "MyObject-C-Interface.h"

MyCPPClass::MyCPPClass()
{
    
}

MyCPPClass::~MyCPPClass()
{
    
}


int MyCPPClass::someMethod (void *objectiveCObject, void *aParameter)
{
    // To invoke an Objective-C method from C++, use
    // the C trampoline function
    return MyObjectDoSomethingWith (objectiveCObject, aParameter);
}

void MyCPPClass::setSelf(void *aSelf)
{
    self = aSelf;
}
