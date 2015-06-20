//
//  MVNumberOfPeopleCell.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "MVNumberOfPeopleCell.h"

@interface MVNumberOfPeopleCell ()
@property (weak, nonatomic) IBOutlet UILabel *numberOfPeopleLabel;

@end

@implementation MVNumberOfPeopleCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - Button Interaction

- (IBAction)upButtonTapped:(id)sender {
    NSLog(@"This happened");
}

- (IBAction)downButtonTapped:(id)sender {
    NSLog(@"This happened");
}

@end
