//
//  OptionsVewControllerViewController.m
//  SopioCardGame
//
//  Created by iD Student on 7/2/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "OptionsVewControllerViewController.h"

@interface OptionsVewControllerViewController ()

@end

@implementation OptionsVewControllerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.player1TextField.delegate = self;
    self.player2TextField.delegate = self;
    self.player3TextField.delegate = self;
    self.player4TextField.delegate = self; 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)save:(id)sender {
    self.player1Name = self.player1TextField.text;
    self.player2Name = self.player1TextField.text;
    self.player3Name = self.player1TextField.text;
    self.player4Name = self.player1TextField.text;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    
    [textField resignFirstResponder]; 
    return YES; 
}
@end
