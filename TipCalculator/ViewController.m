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

@property (nonatomic, assign) float billAmountInDollars;
@property (nonatomic, assign) float tipAmountInDollars;
@property (nonatomic) NSString *userInput;
@property (nonatomic) NSString *tipAmountString;


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
    self.tipAmountInDollars = (self.billAmountInDollars * 15)/100;

    NSLog(@"tip amount in $: %f", self.tipAmountInDollars);
   
    NSString *tipAmountString = [NSString stringWithFormat:@"Tip is: %.02f", self.tipAmountInDollars];
    NSLog(@"tip string: %@ ", tipAmountString);
    [self.tipAmountLabel setText:tipAmountString];
    
    NSLog(@"new label text: %@ ", self.tipAmountLabel.text);
}


@end
