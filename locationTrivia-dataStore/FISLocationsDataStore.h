//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by Kenneth Cooke on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISLocation.h"

@interface FISLocationsDataStore : NSObject
@property (strong, nonatomic) NSMutableArray *locations;

+ (instancetype)sharedLocationsDataStore;

-(instancetype)init;
@end
