//
//  RACSequence+BILExtensions.m
//  LLReactiveOperators
//
//  Created by Lawrence Lomax on 2/11/2013.
//  Copyright (c) 2013 Lawrence Lomax. All rights reserved.
//

#import "RACSequence+LLReactiveOperators.h"

@implementation RACSequence (LLReactiveOperators)

- (NSUInteger) numberOfValuesPassingTest:( BOOL (^)(id value) )test {
    NSUInteger count = 0;
    
    for(id value in self.objectEnumerator) {
        if(test(value)) {
            count++;
        }
    }
    
    return count;
}

+ (instancetype) repeat:(id)value {
    return [RACSequence sequenceWithHeadBlock:^id (){
        return value;
    } tailBlock:^RACSequence *{
        return [self repeat:value];
    }];
}

+ (instancetype) repeat:(id)value times:(NSUInteger)times {
    return [[self repeat:value] take:times];
}

+ (instancetype) countUpFrom:(NSUInteger)from {
    return [RACSequence sequenceWithHeadBlock:^id (){
        return @(from);
    } tailBlock:^RACSequence *{
        return [self countUpFrom:(from + 1)];
    }];
}

+ (instancetype) countUpFrom:(NSUInteger)from to:(NSUInteger)to {
    NSAssert(from < to, @"from must be less than to");
    
    return [[RACSequence sequenceWithHeadBlock:^id (){
        return @(from);
    } tailBlock:^RACSequence *{
        return [self countUpFrom:(from + 1)];
    }] takeWhileBlock:^BOOL(NSNumber *value) {
        return value.unsignedIntegerValue <= to;
    }];
}

@end
