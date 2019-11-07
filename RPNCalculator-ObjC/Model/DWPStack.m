//
//  DWPStack.m
//  RPNCalculator-ObjC
//
//  Created by Dongwoo Pae on 11/7/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "DWPStack.h"

@interface DWPStack ()

@property (nonatomic, readwrite) NSMutableArray *values;

@end

@implementation DWPStack


- (instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        self.values = [[NSMutableArray alloc] initWithArray:array.mutableCopy];
    }
    return self;
}

-(void)push:(NSNumber *)aNumber
{
    [self.values addObject:aNumber];
}

-(void)pop:(NSNumber *)aNumber
{
    NSNumber *lastNumber = [_values lastObject];
    [self.values removeObject:lastNumber];
}

-(int)peek:(NSNumber *)aNumber
{
    return (int)[self.values lastObject];
}


//accessors
- (NSArray *)array
{
    return _values.copy;
}

- (void)setName:(NSArray *)array
{
    _values = array.copy;
}

@end
/*
struct Stack <T> : ExpressibleByArrayLiteral {
    typealias ArrayLiteralElement = T
    //we can represent stack

    private(set) var items: [T]
    
    init(arrayLiteral elements: ArrayLiteralElement...) {
        self.items = elements
    }
    
    init(_ initialElements: [T] = [T]()) {
        self.items = initialElements
    }
    
    mutating func push(_ value: T) {
        self.items.append(value)
    }
    
    mutating func pop() -> T? {
        return items.popLast()
    }
    
    //See the top thing on the stack without removing it
    func peak() -> T? {
        return items.last
    }
}
*/
