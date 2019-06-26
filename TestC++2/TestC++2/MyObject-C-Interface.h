//
//  MyObject-C-Interface.h .h
//  TestC++2
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#ifndef MyObject_C_Interface_h__h
#define MyObject_C_Interface_h__h

class MyClassImpl
{
public:
    MyClassImpl ( void );
    ~MyClassImpl( void );
    
    void init( void );
    int  doSomethingWith( void * aParameter );
    void logMyMessage( char * aCStr );
    
private:
    void * self;
};

#endif /* MyObject_C_Interface_h__h */
