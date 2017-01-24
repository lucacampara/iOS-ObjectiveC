//
//  ViewController.m
//  Esercizio5
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    NSMutableArray *array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [[NSMutableArray alloc]init];
    
    [self initArray];
    
    [self sortArray];
    
    [self divideArray];
}

-(void)sortArray {
    
    NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
        return [obj1 compare:obj2];
    }];
    
    NSLog(@"array ordinato in ordine alfabetico: %@", sortedArray);
}

-(void) divideArray {
    NSMutableArray *namesArray = [[NSMutableArray alloc] init];
    NSMutableArray *surnamesArray = [[NSMutableArray alloc] init];
    
    for (id object in array) {
        NSArray *split = [(NSString *) object componentsSeparatedByString:@" "];
        [namesArray addObject:split[0]];
        [surnamesArray addObject:split[1]];
    }
    
    NSLog(@"Array nomi: %@", namesArray);
    NSLog(@"Array cognomi: %@", surnamesArray);
}

-(void)initArray {
    [array addObject:@"Freddie Campbel"];
    [array addObject:@"Krista Kim"];
    [array addObject:@"Merle Hubbard"];
    [array addObject:@"Lorraine Weber"];
    [array addObject:@"Lorenzo Greene"];
    [array addObject:@"Sandra Brock"];
    [array addObject:@"Nichole Hines"];
    [array addObject:@"Floyd Clarke"];
    [array addObject:@"Andrea Ramsey"];
    [array addObject:@"Marcus Reid"];
    [array addObject:@"Jacob Garza"];
    [array addObject:@"Peter Herrera"];
    [array addObject:@"Glenn Horton"];
    [array addObject:@"Francis Mack"];
    [array addObject:@"Yvette Farmer"];
    [array addObject:@"Evan Hughes"];
    [array addObject:@"Shelley Lane"];
    [array addObject:@"Gladys Carroll"];
    [array addObject:@"Stella Thornton"];
    [array addObject:@"Mindy Wilkerson"];
    [array addObject:@"Beth Diaz"];
    [array addObject:@"Everett Mckinney"];
    [array addObject:@"Audrey Cooper"];
    [array addObject:@"Christie Sutton"];
    [array addObject:@"Timothy Walters"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
