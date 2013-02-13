/*
 * AppController.j
 * cappuccino-ie-opacity
 *
 * Created by You on February 14, 2013.
 * Copyright 2013, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>


@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];


	//[contentView setBackgroundColor:[CPColor colorWithRed:212.0 /255.0 green:0.0 blue:0.0 alpha:1.0]];
	
    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:@"If you can read this it works"];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];

    [label sizeToFit];

    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [label setCenter:[contentView center]];

    [contentView addSubview:label];

	var button = [[CPButton alloc] initWithFrame: CGRectMake(
	                CGRectGetWidth([contentView bounds])/2.0 - 60,
	                CGRectGetMaxY([label frame]) - 25,
	                400, 25
	             )];

	[button setAutoresizingMask:CPViewMinXMargin |
	                            CPViewMaxXMargin |
	                            CPViewMinYMargin |
	                            CPViewMaxYMargin];

	[button setTitle:""];
	[button setAlphaValue:0.5];
	[button setCenter:[contentView center]];
	
	[contentView addSubview:button];
	
	
    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}

@end
