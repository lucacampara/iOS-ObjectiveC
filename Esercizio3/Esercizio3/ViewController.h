//
//  ViewController.h
//  Esercizio3
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultsTableViewController.h"

@interface ViewController : UIViewController <ResultsTableViewDelegate>

@property (nonatomic, weak) IBOutlet UILabel *randomNumberLabel;

-(IBAction)yesButton:(id)sender;
-(IBAction)noButton:(id)sender;


@end

