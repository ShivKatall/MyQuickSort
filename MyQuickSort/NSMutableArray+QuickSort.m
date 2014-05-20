//
//  NSArray+QuickSort.m
//  MyQuickSort
//
//  Created by Cole Bratcher on 5/20/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "NSMutableArray+QuickSort.h"

@implementation NSMutableArray (QuickSort)

- (NSMutableArray *)quickSort
{
    return [self quickSortArrayWithLowPosition:0 andHighPosition:self.count -1];
}

- (NSMutableArray *)quickSortArrayWithLowPosition:(NSInteger)lowPosition andHighPosition:(NSInteger)highPosition
{
    if (lowPosition < highPosition) {
        int pivotLocation = [self partitionArrayWithLowPosition:lowPosition andHighPosition:highPosition];
        [self quickSortArrayWithLowPosition:lowPosition andHighPosition:pivotLocation - 1];
        [self quickSortArrayWithLowPosition:pivotLocation +1 andHighPosition:highPosition];
    }
    return self;
}

- (NSInteger)partitionArrayWithLowPosition:(NSInteger)lowPosition andHighPosition:(NSInteger)highPosition
{
    int pivotValue = [self[lowPosition] intValue];
    int leftWall = lowPosition;
    
    for (int i = lowPosition; i <= highPosition; i++) {
        if ([self[i] intValue] < pivotValue) {
            leftWall++;
            
            [self exchangeObjectAtIndex:i withObjectAtIndex:leftWall];
        }
    }
    
    [self exchangeObjectAtIndex:lowPosition withObjectAtIndex:leftWall];
    
    NSLog(@"%d", leftWall);
    
    return leftWall;
}

@end
