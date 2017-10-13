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
@property (weak, nonatomic) IBOutlet UITextField *tipAmountTextField;

@property (nonatomic, assign) float billAmountInDollars;
@property (nonatomic, assign) float tipAmountInDollars;
@property (nonatomic) NSString *userInputAmount;
@property (nonatomic) NSString *tipAmountString;
@property (nonatomic) NSString *usersInputTip;
@property (nonatomic, assign) int tipPercentage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTextField];
    self.billAmountInDollars = 0.0;
}

- (IBAction)calculateTip:(UIButton *)sender {
    // Get the user's Amount input
    //TODO: Move to separate function
    NSString *usersInputAmount;
    usersInputAmount = self.billAmountTextField.text;
    NSLog(@"user's Amount input: %@", usersInputAmount);
    self.billAmountInDollars = [usersInputAmount intValue];

    //Get the user's Tip % input
    NSString *usersInputTip;
    usersInputTip = self.tipAmountTextField.text;
    NSLog(@"user's Tip input: %@", usersInputTip);
    self.tipPercentage = [usersInputTip intValue];
    
    //Calculate Tip Amount
    self.tipAmountInDollars = (self.billAmountInDollars * self.tipPercentage)/100;

    NSLog(@"tip amount in $: %f", self.tipAmountInDollars);
   
    NSString *tipAmountString = [NSString stringWithFormat:@"Tip is: %.02f", self.tipAmountInDollars];
    NSLog(@"tip string: %@ ", tipAmountString);
    [self.tipAmountLabel setText:tipAmountString];
    
    [self.billAmountTextField setText:@""];
    [self.tipAmountTextField setText:@""];
}

- (void)setupTextField
{
    // set the keyboard type to phonePad
    self.billAmountTextField.keyboardType = UIKeyboardTypePhonePad;
    self.billAmountTextField.clearButtonMode = UITextFieldViewModeUnlessEditing;
    
    self.tipAmountTextField.keyboardType = UIKeyboardTypePhonePad;
    self.tipAmountTextField.clearButtonMode = UITextFieldViewModeUnlessEditing;

}


@end
