//
//  CollectionViewCell.h
//  CollectionViewTutorial
//
//  Created by Julio Rivas on 1/1/15.
//  Copyright (c) 2015 LuaLabs Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) UILabel *textLabel;

- (void)refreshColor;

@end
