//
//  JTAppDelegate.m
//  FlatButton
//
//  Created by Joshua Tessier on 2013-08-21.
//  Copyright (c) 2013 Joshua Tessier. All rights reserved.
//

#import "JTAppDelegate.h"
#import "JTDemoController.h"

@implementation JTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	JTDemoController *controller = [[JTDemoController alloc] init];
	[self.window setRootViewController:controller];
	[self.window makeKeyAndVisible];
	return YES;
}


@end
