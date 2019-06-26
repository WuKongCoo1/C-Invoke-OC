//
//  MyCPPClass.hpp
//  TestC++InvokeOC
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#ifndef MyCPPClass_hpp
#define MyCPPClass_hpp

#include <stdio.h>

class MyCPPClass {
    
    
public:
    MyCPPClass();
    ~MyCPPClass();
    int someMethod (void *objectiveCObject, void *aParameter);
    void *self;
    
    void setSelf(void *self);
};

#endif /* M*yCPPClass_hpp */
