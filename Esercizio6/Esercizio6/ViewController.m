//
//  ViewController.m
//  Esercizio6
//
//  Created by Luca Campara on 24/01/17.
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


-(IBAction)saveButton:(id)sender {
    NSLog(@"Anagrafica: \nNome: %@\nCognome: %@\nEtà: %@", [[self nameTextField] text], [[self surnameTextField] text], [[self ageTextField] text]);
}


@end
