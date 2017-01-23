//
//  ViewController.m
//  Esercizio1
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


-(void)setLabelText:(NSString *) textToShow {
    [self.showTextLabel setText:textToShow];
}

-(IBAction)buttonPressed:(id)sender {
    NSString *textToShow = [self.insertTextField text];
    
    [self setLabelText:textToShow];
    
    NSLog(@"valore inserito: %@", textToShow);
}

-(IBAction)insertTextFieldDidEndOnExit:(id)sender {
    NSString *textToShow = [self.insertTextField text];
    
    [self setLabelText:textToShow];
    
    NSLog(@"valore inserito: %@", textToShow);
}

@end
