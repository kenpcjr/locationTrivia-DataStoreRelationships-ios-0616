//
//  FISAddTriviaViewController.h
//  locationTrivia-dataStore
//
//  Created by Kenneth Cooke on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocationsDataStore.h"
#import "FISTriviaTableViewController.h"

@interface FISAddTriviaViewController : UIViewController
@property (strong, nonatomic) FISLocation *passedLocation;

@end
