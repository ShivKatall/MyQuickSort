//
//  CBViewController.m
//  MyQuickSort
//
//  Created by Cole Bratcher on 5/20/14.
//  Copyright (c) 2014 Cole Bratcher. All rights reserved.
//

#import "CBViewController.h"
#import "NSMutableArray+QuickSort.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	NSMutableArray *unsortedArray = [NSMutableArray new];
    [unsortedArray addObject:[NSNumber numberWithInt:24]];
    [unsortedArray addObject:[NSNumber numberWithInt:5]];
    [unsortedArray addObject:[NSNumber numberWithInt:3]];
    [unsortedArray addObject:[NSNumber numberWithInt:35]];
    [unsortedArray addObject:[NSNumber numberWithInt:14]];
    [unsortedArray addObject:[NSNumber numberWithInt:23]];
    [unsortedArray addObject:[NSNumber numberWithInt:19]];
    [unsortedArray addObject:[NSNumber numberWithInt:4]];
    [unsortedArray addObject:[NSNumber numberWithInt:2]];
    
    NSLog(@"%@", unsortedArray);
    
    [unsortedArray quickSort];
    
    NSLog(@"%@", unsortedArray);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
