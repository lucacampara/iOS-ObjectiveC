//
//  ViewController.h
//  Esercizio6
//
//  Created by Luca Campara on 24/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *nameTextField;
@property (nonatomic, weak) IBOutlet UITextField *surnameTextField;
@property (nonatomic, weak) IBOutlet UITextField *ageTextField;

-(IBAction)saveButton:(id)sender;


@end

