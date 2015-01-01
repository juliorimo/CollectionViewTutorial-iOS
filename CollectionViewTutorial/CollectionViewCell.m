//
//  CollectionViewCell.m
//  CollectionViewTutorial
//
//  Created by Julio Rivas on 1/1/15.
//  Copyright (c) 2015 LuaLabs Inc. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        NSLog(@"cell: %@",NSStringFromCGRect(frame));
        
        _textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _textLabel.font = [UIFont systemFontOfSize:50];
        _textLabel.textColor = [UIColor darkGrayColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:_textLabel];
        
        [self.contentView setBackgroundColor:[self randomColor]];
    }
    return self;
}

- (UIColor *)randomColor
{
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

- (void)refreshColor
{
    [self.contentView setBackgroundColor:[self randomColor]];
}

@end
