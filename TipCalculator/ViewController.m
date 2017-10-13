//
//  ViewController.m
//  TipCalculator
//
//  Created by Olga on 10/13/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;

@property (nonatomic, assign) int billAmountInDollars;
@property (nonatomic, assign) int tipAmountInDollars;
@property (nonatomic) NSString *userInput;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.billAmountInDollars = 0.0;
    
    
    
    
}

- (IBAction)calculateTip:(UIButton *)sender {
    // Get the user's input
    //TODO: Move to separate function
    NSString *usersInput;
    usersInput = self.billAmountTextField.text;
    NSLog(@"user's input: %@", usersInput);
    self.billAmountInDollars = [usersInput intValue];

    //Calculate Tip Amount
    self.tipAmountInDollars = self.billAmountInDollars + 15;

    NSLog(@"tip amount in $: %d", self.tipAmountInDollars);
}


@end
