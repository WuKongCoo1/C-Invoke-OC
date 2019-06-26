//
//  MyObject.h
//  TestC++2
//
//  Created by Jacky on 2019/6/26.
//  Copyright © 2019 Jacky. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyObject : NSObject
{
    int someVar;
}

- (int)  doSomethingWith:(void *) aParameter;
- (void) logMyMessage:(char *) aCStr;


@end

NS_ASSUME_NONNULL_END
