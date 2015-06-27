//
//  ATableViewCell.h
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/17/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+Additions.h"

@class ATableViewCell;
@protocol ATableViewCellDelegate <NSObject>

- (void)billCell:(ATableViewCell *)cell didTapDoneWithAmount:(CGFloat)amount;

@end

@interface ATableViewCell : UITableViewCell

@property (nonatomic, weak) id <ATableViewCellDelegate> delegate;
@property (nonatomic) UILabel *billTitle;
@property (nonatomic) UITextField *billDisplay;

@end
