//
//  ViewController.m
//  Esercizio5
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    NSMutableArray *namesArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    namesArray = [[NSMutableArray alloc]init];
    
    [self initArray];
    
    [self sortArray];
}

-(void)sortArray {
    
    NSArray *sortedArray = [namesArray sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2) {
        return [obj1 compare:obj2];
    }];
    
    NSLog(@"array ordinato in ordine alfabetico: %@", sortedArray);
}

-(void)initArray {
    [namesArray addObject:@"Freddie Campbel"];
    [namesArray addObject:@"Krista Kim"];
    [namesArray addObject:@"Merle Hubbard"];
    [namesArray addObject:@"Lorraine Weber"];
    [namesArray addObject:@"Lorenzo Greene"];
    [namesArray addObject:@"Sandra Brock"];
    [namesArray addObject:@"Nichole Hines"];
    [namesArray addObject:@"Floyd Clarke"];
    [namesArray addObject:@"Andrea Ramsey"];
    [namesArray addObject:@"Marcus Reid"];
    [namesArray addObject:@"Jacob Garza"];
    [namesArray addObject:@"Peter Herrera"];
    [namesArray addObject:@"Glenn Horton"];
    [namesArray addObject:@"Francis Mack"];
    [namesArray addObject:@"Yvette Farmer"];
    [namesArray addObject:@"Evan Hughes"];
    [namesArray addObject:@"Shelley Lane"];
    [namesArray addObject:@"Gladys Carroll"];
    [namesArray addObject:@"Stella Thornton"];
    [namesArray addObject:@"Mindy Wilkerson"];
    [namesArray addObject:@"Beth Diaz"];
    [namesArray addObject:@"Everett Mckinney"];
    [namesArray addObject:@"Audrey Cooper"];
    [namesArray addObject:@"Christie Sutton"];
    [namesArray addObject:@"Timothy Walters"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
