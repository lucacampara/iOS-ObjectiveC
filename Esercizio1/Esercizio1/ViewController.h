//
//  ViewController.h
//  Esercizio1
//
//  Created by Luca Campara on 23/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, weak) IBOutlet UILabel *showTextLabel;
@property(nonatomic, weak) IBOutlet UITextField *insertTextField;

-(IBAction)insertTextFieldDidEndOnExit:(id)sender;
-(IBAction)buttonPressed: (id)sender;


@end

