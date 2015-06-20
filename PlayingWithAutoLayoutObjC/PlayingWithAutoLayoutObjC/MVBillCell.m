//
//  MVBillCell.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "MVBillCell.h"

@interface MVBillCell () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *amountInputTextField;
@end

@implementation MVBillCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
