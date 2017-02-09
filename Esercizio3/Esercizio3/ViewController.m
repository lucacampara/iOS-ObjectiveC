//
//  ViewController.m
//  Esercizio3
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import "ViewController.h"

#define ArrayResults @"UserResults"

#define DateKey @"Date"
#define ResultKey @"Result"

@interface ViewController ()

@end

@implementation ViewController

int randomNumber;

- (void)viewDidLoad {
    [super viewDidLoad];

    // creo un pulsante che andrò a mettere dentro la NavigationBar
    UIBarButtonItem *resultButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(resultButtonPressed)];
    
    // imposto il pulsante come elemento alla DX della mia navigationBar
    self.navigationItem.rightBarButtonItem = resultButtonItem;
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
        [self saveResult:true];
    } else {
        [self openAlert:@"Sbagliato!"];
        [self saveResult:false];
    }
    
    [self printResults];
}


-(IBAction)noButton:(id)sender {
    if ([self isNumberEven:randomNumber]) {
        [self openAlert:@"Sbagliato!"];
        [self saveResult:false];
    } else {
        [self openAlert:@"Corretto!"];
        [self saveResult:true];
    }
    
    [self printResults];
}

-(void)openAlert: (NSString*)message {
    
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Esercizio 3" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action ) {
        [self setNewRandomNumber];
        
    }];
    
    [alertViewController addAction:action];
    [self presentViewController:alertViewController animated:true completion:nil];

}

-(void) resultButtonPressed {
    ResultsTableViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"ResultsTableViewController"];
    
    controller.delegate = self;
    
    [[self navigationController] pushViewController:controller animated:true];
}



#pragma mark - SALVATAGGIO DATI

-(void) printResults {
    NSMutableArray *array = [[[NSUserDefaults standardUserDefaults] objectForKey:ArrayResults]mutableCopy];
    
    if (array != nil) {
        NSLog(@"%@", array);
    }
}

-(NSArray *) getResults {
    NSArray * array = [[NSUserDefaults standardUserDefaults] objectForKey:ArrayResults];
    
    if (array == nil) {
        array = @[]; // inizializzo un array STATICO
    }
    
    return array;
}

-(void) saveResult: (bool)correct {
    NSMutableArray *array = [[[NSUserDefaults standardUserDefaults] objectForKey:ArrayResults]mutableCopy];
    
    if (array == nil) {
        array = @[].mutableCopy;
    }
    
    NSDictionary *dictionary;
    
    if (correct) {
        dictionary = @{DateKey: [self getCurrentDateString], ResultKey: @"CORRETTO"};
    } else {
        dictionary = @{DateKey: [self getCurrentDateString], ResultKey: @"SBAGLIATO"};
    }
    
    [array addObject:dictionary];
    
    [[NSUserDefaults standardUserDefaults] setObject:array forKey:ArrayResults];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(NSString *) getCurrentDateString {
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    // or @"yyyy-MM-dd hh:mm:ss a" if you prefer the time with AM/PM
    
    return [dateFormatter stringFromDate:[NSDate date]];
}



#pragma mark - DELEGATE

-(NSArray *)resultTableViewFetchResults {
    return [self getResults];
}

@end
