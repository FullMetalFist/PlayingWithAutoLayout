//
//  MVTipCell.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "MVTipCell.h"

@interface MVTipCell ()
@property (weak, nonatomic) IBOutlet UILabel *amountLabel;
@property (weak, nonatomic) IBOutlet UILabel *percentageLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipSlider;

@end

@implementation MVTipCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)sliderValueChanged:(id)sender {
}

@end
