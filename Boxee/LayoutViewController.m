//
//  LayoutViewController.m
//  Boxee
//
//  Created by Lee Lundrigan on 5/29/11.
//  Copyright 2011 Blazing Cloud, Inc. All rights reserved.
//

#import "LayoutViewController.h"
#import "Box.h"

#define SQUARE_SIZE 100
#define UPDATE_VIEW 5.0

@implementation LayoutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
        initialized = NO;
    }
    
    return self;
}

- (void)awakeFromNib {
    if (!initialized) {
        initialized = YES;
        
        NSRect scrollViewFrame = [[self view] frame];
        NSRect contentViewFrame = NSMakeRect(0, 0, scrollViewFrame.size.width, scrollViewFrame.size.height);
        [contentView setFrame:contentViewFrame];
        
        boxes = [[NSMutableArray alloc] initWithCapacity:1];
        [self addBoxesToContentViewWithFrame:contentViewFrame];
        [NSTimer scheduledTimerWithTimeInterval:UPDATE_VIEW
                                         target:self
                                       selector:@selector(addNewRowToContentView)
                                       userInfo:nil
                                        repeats:YES];
    }
}

- (void) addNewRowToContentView {
    CGRect currentFrame = [contentView frame];
    
    CGRect newRow = CGRectMake(0.0, currentFrame.size.height, currentFrame.size.width, SQUARE_SIZE);
    currentFrame.size.height += newRow.size.height;
    [contentView setFrame:currentFrame];
    
    [self addBoxesToContentViewWithFrame:newRow];
}

- (void) addBoxesToContentViewWithFrame:(NSRect)frame {
    float frameHeight = frame.origin.y + frame.size.height;
    float frameWidth = frame.origin.x + frame.size.width;
    
    for (int j = frame.origin.y; j < frameHeight; j+= SQUARE_SIZE) {
        for (int i = frame.origin.x; i < frameWidth; i+= SQUARE_SIZE) { 
            CGRect boxFrame = CGRectMake(i, j, SQUARE_SIZE, SQUARE_SIZE);
            Box *box = [[Box alloc] initWithFrame:boxFrame];
            [boxes addObject:box];
            [contentView addSubview:box];
        }
    }
}

- (void)dealloc
{
    [boxes release];
    [super dealloc];
}

@end
