//
//  OptionsVewControllerViewController.h
//  SopioCardGame
//
//  Created by iD Student on 7/2/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OptionsVewControllerViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *player1TextField;
@property (strong, nonatomic) IBOutlet UITextField *player2TextField;
@property (strong, nonatomic) IBOutlet UITextField *player3TextField;
@property (strong, nonatomic) IBOutlet UITextField *player4TextField;
@property (strong, nonatomic) NSString *player1Name;
@property (strong, nonatomic) NSString *player2Name;
@property (strong, nonatomic) NSString *player3Name;
@property (strong, nonatomic) NSString *player4Name; 
- (IBAction)save:(id)sender;
- (BOOL)textFieldShouldReturn:(UITextField *)textField; 
@end
