//
//  MVBillCell.h
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+MVAdditions.h"

@class MVBillCell;
@protocol MVBillCellDelegate <NSObject>
- (void)billCell:(MVBillCell *)cell didTapDoneWithAmount:(CGFloat)amount;
@end

@interface MVBillCell : UITableViewCell
@property (nonatomic, weak) id <MVBillCellDelegate> delegate;
@end
