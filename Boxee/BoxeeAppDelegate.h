//
//  BoxeeAppDelegate.h
//  Boxee
//
//  Created by Lee Lundrigan on 5/29/11.
//  Copyright 2011 Blazing Cloud, Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BoxeeAppDelegate : NSObject <NSApplicationDelegate> {
@private
    NSWindow *window;
    
    IBOutlet NSViewController *layoutViewController;
}

@property (assign) IBOutlet NSWindow *window;

@end
