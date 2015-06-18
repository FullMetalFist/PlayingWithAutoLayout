//
//  ATableViewCell.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/17/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "ATableViewCell.h"

@implementation ATableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.billTitle = [[UILabel alloc] init];
        self.billTitle.translatesAutoresizingMaskIntoConstraints = NO;
        self.billTitle.text = @"bill:";
        
        self.billDisplay = [[UITextField alloc] init];
        self.billDisplay.translatesAutoresizingMaskIntoConstraints = NO;
        self.billDisplay.keyboardType = UIKeyboardTypeDecimalPad;
        CGFloat billDisplayFontSize = 36.0f;
        UIFont *billDisplayFont = [self.billDisplay.font fontWithSize:billDisplayFontSize];
        self.billDisplay.font = billDisplayFont;
        self.billDisplay.placeholder = @"$";
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)createUIComponents {
    self.billTitle = [[UILabel alloc] init];
    self.billTitle.translatesAutoresizingMaskIntoConstraints = NO;
    self.billTitle.text = @"bill:";
    
    self.billDisplay = [[UITextField alloc] init];
    self.billDisplay.translatesAutoresizingMaskIntoConstraints = NO;
    self.billDisplay.keyboardType = UIKeyboardTypeDecimalPad;
    CGFloat billDisplayFontSize = 36.0f;
    UIFont *billDisplayFont = [self.billDisplay.font fontWithSize:billDisplayFontSize];
    self.billDisplay.font = billDisplayFont;
    self.billDisplay.placeholder = @"$";
    
}

@end
