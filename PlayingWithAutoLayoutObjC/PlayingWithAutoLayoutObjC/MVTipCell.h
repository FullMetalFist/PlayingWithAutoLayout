//
//  MVTipCell.h
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+MVAdditions.h"

@class MVTipCell;
@protocol MVTipCellDelegate <NSObject>
- (void)tipCell:(MVTipCell *)cell didChangeTipValue:(CGFloat)tipValue;
@end

@interface MVTipCell : UITableViewCell
@property (nonatomic, weak) id <MVTipCellDelegate> delegate;
@end
