//
//  JTFlatButton.m
//  FlatButton
//
//  Created by Joshua Tessier on 2013-08-21.
//  Copyright (c) 2013 Joshua Tessier. All rights reserved.
//

#import "JTFlatButton.h"

@implementation JTFlatButton

+ (JTFlatButton*)flatButton
{
	return [JTFlatButton buttonWithType:UIButtonTypeCustom];
}

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		self.backgroundColor = [UIColor clearColor];
		self.contentMode = UIViewContentModeRedraw;
	}
	return self;
}

- (void)setButtonColor:(UIColor *)buttonColor
{
	_buttonColor = buttonColor;
	[self setNeedsDisplay];
}

- (void)setSideColor:(UIColor *)sideColor
{
	_sideColor = sideColor;
	[self setNeedsDisplay];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
	_cornerRadius = cornerRadius;
	[self setNeedsDisplay];
}

- (void)setDepth:(CGFloat)depth
{
	_depth = depth;
	[self setNeedsDisplay];
}

- (void)setSelected:(BOOL)selected
{
	[super setSelected:selected];
	[self setNeedsDisplay];
}

- (void)setHighlighted:(BOOL)highlighted
{
	[super setHighlighted:highlighted];
	[self setNeedsDisplay];
}

- (void)drawButton:(CGRect)rect pressed:(BOOL)pressed
{
	CGFloat buttonHeight = rect.size.height - _depth;
	
	//Draw the side of the button
	[[self sideColor] set];
	CGRect bottomButtonRect = CGRectMake(rect.origin.x, rect.origin.y + _depth, rect.size.width, buttonHeight);
	[[UIBezierPath bezierPathWithRoundedRect:bottomButtonRect cornerRadius:_cornerRadius] fill];
	
	//Draw the top of the button
	[[self buttonColor] set];
	CGRect buttonRect = CGRectMake(rect.origin.x, rect.origin.y + (pressed ? _depth - 1.0f : 0.0f), rect.size.width, buttonHeight);
	[[UIBezierPath bezierPathWithRoundedRect:buttonRect cornerRadius:_cornerRadius] fill];
}

- (void)drawRect:(CGRect)rect
{
	BOOL pressed = [self isSelected] || [self isHighlighted];
	
	//Adjust the title to look like it's moving with the buttton top
	[self setTitleEdgeInsets:UIEdgeInsetsMake(pressed ? _depth - 1.0f : 0.0f, 0.0f, 0.0f, 0.0f)];
	[self drawButton:rect pressed:pressed];
}

@end
