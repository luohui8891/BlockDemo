//
//  IAmClassA.m
//  BlockDemo
//
//  Created by Andy on 14-8-7.
//  Copyright (c) 2014年 Andy. All rights reserved.
//

#import "IAmClassA.h"
@interface IAmClassA (){
    UIAlertView * _alertView;
    NSString * _question;
    IAmClassACompletion _completionBlock;
}
@end

@implementation IAmClassA
- (id)initWithTextQueryWith:(NSString *)question{
    self = [super init];
    if(self){
        _question = [question copy];
    }
    return self;
}

- (void)showWithCompletionBlock:(IAmClassACompletion)completionBlock{
    _completionBlock = [completionBlock copy];
    dispatch_async(dispatch_get_main_queue(), ^{
        _alertView = [[UIAlertView alloc] initWithTitle:_question
                                                message:nil
                                               delegate:self
                                      cancelButtonTitle:@"OK"
                                      otherButtonTitles:nil];
        [_alertView show];
    });
}

#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (_alertView == alertView) {
        if (_completionBlock) {
            _completionBlock();
        }
    }
}

@end
