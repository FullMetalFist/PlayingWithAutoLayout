//
//  MVNumberOfPeopleCell.h
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+MVAdditions.h"

@class MVNumberOfPeopleCell;
@protocol MVNumberOfPeopleCellDelegate <NSObject>
- (void)numberOfPeopleCell:(MVNumberOfPeopleCell *)cell didChangeNumberOfPeople:(NSUInteger)numberOfPeople;
@end

@interface MVNumberOfPeopleCell : UITableViewCell
@property (nonatomic, weak) id <MVNumberOfPeopleCellDelegate> delegate;
@end
