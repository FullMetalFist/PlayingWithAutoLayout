//
//  MVTotalCell.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "MVTotalCell.h"

@interface MVTotalCell ()

@property (weak, nonatomic) IBOutlet UILabel *totalPriceLabel;
@end

@implementation MVTotalCell

- (void)configureWithPrice:(CGFloat)price {
    self.totalPriceLabel.text = [NSString stringWithFormat:@"$%1.2f", price];
}

@end
