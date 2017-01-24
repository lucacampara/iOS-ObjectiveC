//
//  ViewController.m
//  Esercizio7
//
//  Created by Luca Campara on 24/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    int seconds, minutes, hours;
    NSString *timerToShow;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self startTimer];
    
    seconds, minutes, hours = 0;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) startTimer {
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTick) userInfo:nil repeats:true];
}

-(void) timerTick {
    
    if (seconds == 59) {
        minutes++;
        seconds = 0;
    } else {
        seconds ++;
    }
    
    if (minutes == 59) {
        hours ++;
        minutes = 0;
    }

    [self setLabeText: [NSString stringWithFormat:@"%i:%i:%i", hours, minutes, seconds]];
}


-(void) setLabeText: (NSString *) text {
    [[self timerLabel] setText: text];
}

@end
