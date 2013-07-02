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
    self.deck = [[NSMutableArray alloc] init];
    [self makeCards]; 
    

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
   // NSLog(@"Called");
    //*rect = [CGRect alloc] init;
    self.popUpSelector = [[UIView alloc] initWithFrame:CGRectMake(228, 178, 607, 418)];
    [self.view addSubview:self.popUpSelector]; 
    [self.popUpSelector setBackgroundColor:[UIColor blackColor]];
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(30, 65, 290, 150)];
    button1.backgroundColor = [UIColor blueColor]; 
    [button1 addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.popUpSelector addSubview:button1];
    
    
    
}

- (IBAction)buttonPressed:(id)sender{
    
    [self.popUpSelector removeFromSuperview];
}

-(void) makeCards;
{
    Card *acrobat = [[Card alloc] initWithPointValue:300 withPicture:@"Acrobat.png"];
    Card *clubs = [[Card alloc] initWithPointValue:-200 withPicture:@"Clubs.png"];
    Card *hearts = [[Card alloc] initWithPointValue:200 withPicture:@"Hearts.png"];
    Card *diamonds = [[Card alloc] initWithPointValue:200 withPicture:@"Diamonds.png"];
    Card *spades = [[Card alloc] initWithPointValue:-200 withPicture:@"Spades.png"];
    Card *youRock = [[Card alloc] initWithPointValue:500 withPicture:@"YouRock.png"];
    Card *youSuck = [[Card alloc] initWithPointValue:-500 withPicture:@"YouSuck"];
    Card *cowboyBuilder = [[Card alloc] initWithPointValue:300 withPicture:@"CowBoyBuilder.png"];
    
    self.startUpArray = [[NSMutableArray alloc] initWithObjects:acrobat,clubs, hearts, diamonds, spades, youRock, youSuck, cowboyBuilder, nil];
    [self shuffleDeckWithStartUpArray:self.startUpArray];
}

-(void) shuffleDeckWithStartUpArray: (NSMutableArray *)starter;
{
    while ([starter count] > 0) {
        int pos = arc4random()%[starter count];
        
        [self.deck addObject:[starter objectAtIndex:pos]];
        [starter removeObjectAtIndex:pos];
        //NSLog(@"%@", self.deck);
        
    }
    
    
}
@end
