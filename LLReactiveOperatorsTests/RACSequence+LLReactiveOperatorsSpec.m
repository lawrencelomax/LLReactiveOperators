#import "RACSequence+LLReactiveOperators.h"

SpecBegin(RACSequence_LLReactiveOperatorsSpec)

describe(@"the reactive operators", ^{
    it(@"should repeat", ^{
        RACSequence *emptySequence = [RACSequence repeat:@0 times:0];
        
        NSUInteger count = 0;
        for(id object in emptySequence.objectEnumerator) {
            count++;
        }
        
        EXP_expect(count).to.equal(0);
        
        RACSequence *countedSequence = [RACSequence repeat:@0 times:10];
        count = 0;
        for(id object in countedSequence.objectEnumerator) {
            count++;
            EXP_expect(object).to.equal(@0);
        }
        
        EXP_expect(count).to.equal(10);
    });
});

SpecEnd
