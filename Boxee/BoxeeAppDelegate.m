//
//  BoxeeAppDelegate.m
//  Boxee
//
//  Created by Lee Lundrigan on 5/29/11.
//  Copyright 2011 Blazing Cloud, Inc. All rights reserved.
//

#import "BoxeeAppDelegate.h"

@implementation BoxeeAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [window setContentView:[layoutViewController view]];
}

@end
