//
//  ViewController.h
//  SopioCardGame
//
//  Created by iD Student on 7/1/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"


@interface ViewController : UIViewController
@property (strong, nonatomic) UIView *popUpSelector;
-(IBAction)buttonPressed:(id)sender;

//The five Image views for the current player's hand
@property (strong, nonatomic) IBOutlet UIImageView *handView1;
@property (strong, nonatomic) IBOutlet UIImageView *handView2;
@property (strong, nonatomic) IBOutlet UIImageView *handView3;
@property (strong, nonatomic) IBOutlet UIImageView *handView4;
@property (strong, nonatomic) IBOutlet UIImageView *handView5;

//cards are put here until they can be "shuffled" into the deck array
@property (strong, nonatomic) NSMutableArray *startUpArray;
//Difines the Array in Which the Deck is held
@property (strong, nonatomic) NSMutableArray *deck;





- (void)handleTap:(UITapGestureRecognizer *)recognizer;

@end
