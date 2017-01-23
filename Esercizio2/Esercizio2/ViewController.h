//
//  ViewController.h
//  Esercizio2
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *checkNumberLabel;
@property (nonatomic, weak) IBOutlet UITextField *insertNumberTextField;


-(IBAction)insertNumberTextFieldDidEndOnExit:(id)sender;

-(IBAction)buttonCheckNumber:(id)sender;


@end

