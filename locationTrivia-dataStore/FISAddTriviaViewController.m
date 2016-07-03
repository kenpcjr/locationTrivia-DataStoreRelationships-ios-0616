//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Kenneth Cooke on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"

@interface FISAddTriviaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *trivium;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@", self.passedLocation.name);
    self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    self.cancelButton.accessibilityLabel = @"Cancel Button";
    self.saveButton.accessibilityLabel = @"Save Button";
    self.saveButton.accessibilityIdentifier = @"Save Button";
    self.trivium.accessibilityIdentifier = @"Trivium TextField";
    self.trivium.accessibilityLabel = @"Trivium TextField";
    
    
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
    
    FISLocationsDataStore *dataStore = [FISLocationsDataStore sharedLocationsDataStore];
    
    FISTrivium *newTrivia = [[FISTrivium alloc]initWithContent:self.trivium.text likes:0];
    
    [self.passedLocation.trivia addObject:newTrivia];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}

@end
