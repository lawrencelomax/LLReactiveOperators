//
//  RACSignal+LLReactiveOperators.m
//  LLReactiveOperators
//
//  Created by Lawrence Lomax on 3/11/2013.
//  Copyright (c) 2013 Lawrence Lomax. All rights reserved.
//

#import "RACSignal+LLReactiveOperators.h"

@implementation RACSignal (LLReactiveOperators)

- (instancetype) reduceAtIndex:(NSUInteger)index {
    return [self map:^id(id value) {
        if([value respondsToSelector:@selector(objectAtIndexedSubscript:)]) {
            return value[index];
        } else {
            NSCAssert(NO, @"Cannot reduce on non indexed object");
            return value;
        }
    }];
}

@end
