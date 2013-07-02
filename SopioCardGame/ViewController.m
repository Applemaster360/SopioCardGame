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
    
    UITapGestureRecognizer *tap1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    UITapGestureRecognizer *tap2 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    UITapGestureRecognizer *tap3 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    UITapGestureRecognizer *tap4 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    UITapGestureRecognizer *tap5 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    //tap.numberOfTapsRequired = 1;
    [self.handView1 addGestureRecognizer:tap1];
    
    [self.handView2 addGestureRecognizer:tap2];
    [self.handView3 addGestureRecognizer:tap3];
    [self.handView4 addGestureRecognizer:tap4];
    [self.handView5 addGestureRecognizer:tap5];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer {
    NSLog(@"Called");
    //*rect = [CGRect alloc] init;
    self.popUpSelector = [[UIView alloc] initWithFrame:<#(CGRect)#>
    
    
    
}

@end
