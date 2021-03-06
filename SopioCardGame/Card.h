//
//  Card.h
//  SopioCardGame
//
//  Created by iD Student on 7/1/13.
//  Copyright (c) 2013 James. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Card : NSObject
@property (strong, nonatomic) UIImageView *cardView;
@property (nonatomic) int pointValue;
@property (strong, nonatomic) NSString *picture;
-(id) initWithPointValue: (int)points withPicture:(NSString*)image ;
@end
