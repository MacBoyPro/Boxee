//
//  LayoutViewController.h
//  Boxee
//
//  Created by Lee Lundrigan on 5/29/11.
//  Copyright 2011 Blazing Cloud, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface LayoutViewController : NSViewController {
@private
    BOOL initialized;
    
    NSMutableArray *boxes;
    
    IBOutlet NSView *contentView;
}

- (void) addBoxesToContentViewWithFrame:(NSRect)frame;

@end
