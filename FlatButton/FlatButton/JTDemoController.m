//
//  JTDemoController.m
//  FlatButton
//
//  Created by Joshua Tessier on 2013-08-21.
//  Copyright (c) 2013 Joshua Tessier. All rights reserved.
//

#import "JTDemoController.h"
#import "JTFlatButton.h"

@implementation JTDemoController

- (void)loadView
{
	[super loadView];
	
	JTFlatButton *button = [JTFlatButton flatButton];
	button.buttonColor = [UIColor colorWithRed:0.353 green:0.635 blue:0.843 alpha:1];
	button.sideColor = [UIColor colorWithRed:0.318 green:0.494 blue:0.686 alpha:1];
	button.frame = CGRectMake(100, 100, 200, 60);
	button.depth = 3.0f;
	button.cornerRadius = 6.0f;
	[button setTitle:@"Le Button" forState:UIControlStateNormal];
	[self.view addSubview:button];
	self.view.backgroundColor = [UIColor whiteColor];
}

@end
