//
//  FISTriviaTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Kenneth Cooke on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISAddTriviaViewController.h"

@interface FISTriviaTableViewController : UITableViewController
@property (strong, nonatomic) FISLocation *location;
@end
