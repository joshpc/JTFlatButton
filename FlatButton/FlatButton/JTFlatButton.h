//
//  JTFlatButton.h
//  FlatButton
//
//  Created by Joshua Tessier on 2013-08-21.
//  Copyright (c) 2013 Joshua Tessier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JTFlatButton : UIButton

@property (nonatomic, strong) UIColor *buttonColor;
@property (nonatomic, strong) UIColor *sideColor;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat depth;

+ (JTFlatButton*)flatButton;

@end
