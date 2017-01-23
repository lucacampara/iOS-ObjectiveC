//
//  ViewController.m
//  Esercizio4
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
   NSArray *array;
}

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [self createArrayRandom];
    
    [self sortArrayAscendingAndPrint: array];
    [self sortArrayDescendingAndPrint: array];
    
    int sum = [self sumOfArray:array];
    NSLog(@"somma array %i", sum);
    
    self.sumArrayItemsLabel.text = [NSString stringWithFormat:@"%i", sum];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *) createArrayRandom {
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 0; i < 100; i++) {
        [numbers addObject: [NSNumber numberWithInt: [self getRandomNumberBetween1And1000]]];
    }
    
    return numbers;
}

-(int)getRandomNumberBetween1And1000 {
    return 1 + arc4random() % (1000-1+1);
}

-(int)sumOfArray: (NSArray *) numbersArray{
    int sum = 0;
    for (id object in numbersArray) {
        sum += (int)object;
    }

    return sum;
}

-(void)sortArrayAscendingAndPrint: (NSArray *) numbersArray{
    NSArray *sortedArray = [numbersArray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        }
        
        if (value1 < value2) {
            return NSOrderedAscending;
        }
        
        return NSOrderedDescending;
    }];
    
    NSLog(@"Array Ordine Ascendente: %@", sortedArray);
}

-(void)sortArrayDescendingAndPrint: (NSArray *) array{
    NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        }
        
        if (value1 > value2) {
            return NSOrderedAscending;
        }
        
        return NSOrderedDescending;
    }];
    
    NSLog(@"Array Ordine Discendente: %@", sortedArray);
}


@end
