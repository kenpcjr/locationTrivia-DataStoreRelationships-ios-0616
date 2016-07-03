//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Kenneth Cooke on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *latitude;
@property (weak, nonatomic) IBOutlet UITextField *longitude;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)cancelTapped:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)saveTapped:(id)sender {
    
    FISLocation *newLocation = [[FISLocation alloc]initWithName:self.name.text latitude:[self.latitude.text floatValue] longitude:[self.longitude.text floatValue]];
    
    FISLocationsDataStore *dataStore = [FISLocationsDataStore sharedLocationsDataStore];
    
    [dataStore.locations addObject:newLocation];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

//-(void)viewWillAppear:(BOOL)animated{
//    [FISLocationsTableViewController.]
//}

@end
