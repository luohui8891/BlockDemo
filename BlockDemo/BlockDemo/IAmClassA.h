//
//  IAmClassA.h
//  BlockDemo
//
//  Created by Andy on 14-8-7.
//  Copyright (c) 2014年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^IAmClassACompletion)(void);

@interface IAmClassA : NSObject
- (id)initWithTextQueryWith:(NSString *)question;
- (void)showWithCompletionBlock:(IAmClassACompletion)completionBlock;
@end
