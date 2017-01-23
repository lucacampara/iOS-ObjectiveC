//
//  ViewController.m
//  Esercizio2
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)checkResult: (int)numberToVerify {
    NSMutableString *messageString = [NSMutableString stringWithFormat: @"Il numero %i è ", numberToVerify];
    
    NSString *secondPart;
    
    if (numberToVerify % 2 == 0) {
        secondPart = @"pari";
    } else {
        secondPart = @"dispari";
    }
    
    [messageString appendString:secondPart];
    
    [self.checkNumberLabel setText:messageString];
    
    NSLog(@"%@", messageString);
}

-(IBAction)buttonCheckNumber:(id)sender {
    
    NSString * string =[self.insertNumberTextField text];
    [self checkResult: [string integerValue]];
}

-(IBAction)insertNumberTextFieldDidEndOnExit:(id)sender {
    
    NSString * string =[self.insertNumberTextField text];
    [self checkResult: [string integerValue]];
}

@end
