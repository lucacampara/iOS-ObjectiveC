//
//  ResultsTableViewController.h
//  Esercizio3
//
//  Created by Luca Campara on 24/01/17.
//  Copyright © 2017 Luca Campara. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ResultsTableViewDelegate <NSObject>

/// richiedo i risultati alla classe che conforma al mio protocollo
-(NSArray *)resultTableViewFetchResults;

@end

@interface ResultsTableViewController : UITableViewController

@property (nonatomic, unsafe_unretained) id <ResultsTableViewDelegate> delegate;

@end
