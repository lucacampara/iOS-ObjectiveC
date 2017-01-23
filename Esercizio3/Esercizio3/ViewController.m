//
//  ViewController.m
//  Esercizio3
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int randomNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated {
    [self setNewRandomNumber];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void) setNewRandomNumber {
    randomNumber = [self getRandomNumberBetween:1 to:1000];
    NSString *number = [NSString stringWithFormat:@"%i", randomNumber];
    [self.randomNumberLabel setText:(number)];
}

// controllo se è pari
-(BOOL)isNumberEven:(int)number {
    if (number % 2 == 0) {
        return true;
    } else {
        return false;
    }
}

-(IBAction)yesButton:(id)sender {
    if ([self isNumberEven:randomNumber]) {
        [self openAlert:@"Corretto!"];
    } else {
        [self openAlert:@"Sbagliato!"];
    }
}


-(IBAction)noButton:(id)sender {
    if ([self isNumberEven:randomNumber]) {
        [self openAlert:@"Sbagliato!"];
    } else {
        [self openAlert:@"Corretto!"];
    }
}

-(void)openAlert: (NSString*)message {
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Esercizio 3" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action ) {
        [self setNewRandomNumber];
        
    }];
    
    [alertViewController addAction:action];
    [self presentViewController:alertViewController animated:true completion:nil];

}

@end
