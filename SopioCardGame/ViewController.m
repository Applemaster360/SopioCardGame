//
//  ViewController.m
//  SopioCardGame
//
//  Created by iD Student on 7/1/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
@synthesize handView1 = _handView1;
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.handView1.userInteractionEnabled = YES;
    self.handView2.userInteractionEnabled = YES;
    self.handView3.userInteractionEnabled = YES;
    self.handView4.userInteractionEnabled = YES;
    self.handView5.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tap =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    tap.numberOfTapsRequired = 1;
    [self.handView1 addGestureRecognizer:tap];
    
    [self.handView2 addGestureRecognizer:tap];
    [self.handView3 addGestureRecognizer:tap];
    [self.handView4 addGestureRecognizer:tap];
    [self.handView5 addGestureRecognizer:tap];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer {
    NSLog(@"Called");
    
    
    
}

@end
