//
//  MVEachPayCell.h
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+MVAdditions.h"

@class MVEachPayCell;
@protocol MVEachPayCellDelegate <NSObject>
- (void)eachPayCell:(MVEachPayCell *)cell didTapVenmoButton:(id)sender;
@end

@interface MVEachPayCell : UITableViewCell
@property (nonatomic, weak) id <MVEachPayCellDelegate> delegate;
- (void)configureWithEachPayPrice:(CGFloat)price;
@end
