//
//  MVEachPayCell.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "MVEachPayCell.h"

@interface MVEachPayCell()
@property (weak, nonatomic) IBOutlet UILabel *eachPayPriceLabel;
@end

@implementation MVEachPayCell

- (void)prepareForReuse {
    [super prepareForReuse];
    self.eachPayPriceLabel.text = @"$0.00";
}

- (void)configureWithEachPayPrice:(CGFloat)price {
    self.eachPayPriceLabel.text = [NSString stringWithFormat:@"$%1.2f", price];
}

#pragma mark - Button Interaction

- (IBAction)venmoButtonTapped:(id)sender {
    NSLog(@"this happened");
}

@end
