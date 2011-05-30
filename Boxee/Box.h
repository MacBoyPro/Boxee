//
//  Box.h
//  Boxee
//
//  Created by Lee Lundrigan on 5/29/11.
//  Copyright 2011 Blazing Cloud, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Box : NSView {
@private
    
    float red;
    float blue;
    float green;
    float alpha;
}

- (void)setColors;
- (float) randomFloatBetweenSmallNumber:(float)smallNumber andBigNumber:(float)bigNumber;

@end
