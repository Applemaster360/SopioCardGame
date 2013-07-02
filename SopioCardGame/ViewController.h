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
 
@property (strong, nonatomic) IBOutlet UIImageView *handView1;
@property (strong, nonatomic) IBOutlet UIImageView *handView2;
@property (strong, nonatomic) IBOutlet UIImageView *handView3;
@property (strong, nonatomic) IBOutlet UIImageView *handView4;
@property (strong, nonatomic) IBOutlet UIImageView *handView5;
- (void)handleTap:(UITapGestureRecognizer *)recognizer;

@end
