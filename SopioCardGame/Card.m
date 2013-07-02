//
//  Card.m
//  SopioCardGame
//
//  Created by iD Student on 7/1/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import "Card.h"

@implementation Card
@synthesize cardView = _cardView;
@synthesize pointValue = _pointValue;

-(id) initWithPointValue: (int)points withPicture:(NSString*)picture {
    self = [super init];
    self.pointValue = points;
}


@end
