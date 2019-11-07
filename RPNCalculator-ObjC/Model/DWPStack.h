//
//  DWPStack.h
//  RPNCalculator-ObjC
//
//  Created by Dongwoo Pae on 11/7/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DWPStack : NSObject

-(instancetype)initWithArray:(NSArray *)array;

@property (nonatomic, readonly) NSArray *array;

-(void)push:(NSNumber *)aNumber;
-(void)pop:(NSNumber *)aNumber;
-(int)peek:(NSNumber *)aNumber;

@end
