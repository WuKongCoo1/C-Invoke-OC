//
//  MyCPPClass.hpp
//  TestC++2
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#ifndef MyCPPClass_hpp
#define MyCPPClass_hpp

#include <stdio.h>

class MyClassImpl;

class MyCPPClass
{
    enum { cANSWER_TO_LIFE_THE_UNIVERSE_AND_EVERYTHING = 42 };
public:
    MyCPPClass ( void );
    ~MyCPPClass( void );
    
    void init( void );
    void doSomethingWithMyClass( void );
    
private:
    MyClassImpl * _impl;
    int           _myValue;
};


#endif /* MyCPPClass_hpp */
