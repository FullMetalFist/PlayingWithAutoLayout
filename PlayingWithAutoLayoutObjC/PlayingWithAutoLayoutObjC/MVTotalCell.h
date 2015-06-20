//
//  MVTotalCell.h
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+MVAdditions.h"

@interface MVTotalCell : UITableViewCell
- (void)configureWithPrice:(CGFloat)price;
@end
