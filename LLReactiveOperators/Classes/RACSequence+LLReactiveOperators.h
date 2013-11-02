//
//  RACSequence+BILExtensions.h
//  LLReactiveOperators
//
//  Created by Lawrence Lomax on 2/11/2013.
//  Copyright (c) 2013 Lawrence Lomax. All rights reserved.
//

#import "RACSequence.h"

@interface RACSequence (LLReactiveOperators)

- (NSUInteger) numberOfValuesPassingTest:( BOOL (^)(id value) )test;

+ (instancetype) repeat:(id)value;
+ (instancetype) repeat:(id)value times:(NSUInteger)times;

+ (instancetype) countUpFrom:(NSUInteger)from;
+ (instancetype) countUpFrom:(NSUInteger)from to:(NSUInteger)to;

@end
