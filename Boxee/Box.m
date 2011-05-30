//
//  Box.m
//  Boxee
//
//  Created by Lee Lundrigan on 5/29/11.
//  Copyright 2011 Blazing Cloud, Inc. All rights reserved.
//

#import "Box.h"
#import <ScreenSaver/ScreenSaver.h>

@implementation Box

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setColors];
    }
    
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)setColors {
    red = [self randomFloatBetweenSmallNumber:0.0 andBigNumber:255.0] / 255.0;
    green = [self randomFloatBetweenSmallNumber:0.0 andBigNumber:255.0] / 255.0;
    blue = [self randomFloatBetweenSmallNumber:0.0 andBigNumber:255.0] / 255.0;
    alpha = [self randomFloatBetweenSmallNumber:0.0 andBigNumber:255.0] / 255.0;
}

- (float) randomFloatBetweenSmallNumber:(float)smallNumber andBigNumber:(float)bigNumber {
    float diff = bigNumber - smallNumber;
    return (((float) rand() / RAND_MAX) * diff) + smallNumber;
}

- (void)drawRect:(NSRect)dirtyRect {   
    
    NSColor *otherColor = [NSColor colorWithCalibratedRed:red
                                                   green:green
                                                     blue:blue
                                                   alpha:alpha];
    
    [otherColor setFill];
    NSRectFill(dirtyRect);
}

@end
