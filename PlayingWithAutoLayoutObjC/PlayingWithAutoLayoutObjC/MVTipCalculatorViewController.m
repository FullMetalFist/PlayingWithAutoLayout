//
//  MVTipCalculatorViewController.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "MVTipCalculatorViewController.h"

// Cells
#import "MVBillCell.h"
#import "MVTipCell.h"
#import "MVNumberOfPeopleCell.h"
#import "MVEachPayCell.h"
#import "MVTotalCell.h"

typedef NS_ENUM(NSUInteger, MVTipCellType) {
    MVTipCellTypeBill = 0,
    MVTipCellTypeTip,
    MVTipCellTypeNumberOfPeople,
    MVTipCellTypeEachPay,
    MVTipCellTypeTotal,
    MVTipCellTypeNumberOfCells
};


@interface MVTipCalculatorViewController () <   UITableViewDataSource, UITableViewDelegate,
                                                MVBillCellDelegate,
                                                MVTipCellDelegate,
                                                MVNumberOfPeopleCellDelegate,
                                                MVEachPayCellDelegate>
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic) CGFloat originalBillPrice;
@property (nonatomic) CGFloat tipPrice;
@property (nonatomic) NSUInteger numberOfPeople;
@property (nonatomic) CGFloat eachPayPrice;
@property (nonatomic) CGFloat totalPrice;
@end

@implementation MVTipCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDataSource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return MVTipCellTypeNumberOfCells;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id cell = nil;
    NSString *nibName = nil;
    switch (indexPath.row) {
        case MVTipCellTypeBill:
            nibName = [MVBillCell standardReuseIdentifier];
            break;
        case MVTipCellTypeTip:
            nibName = [MVTipCell standardReuseIdentifier];
            break;
        case MVTipCellTypeNumberOfPeople:
            nibName = [MVNumberOfPeopleCell standardReuseIdentifier];
            break;
        case MVTipCellTypeEachPay:
            nibName = [MVEachPayCell standardReuseIdentifier];
            break;
        case MVTipCellTypeTotal:
            nibName = [MVTotalCell standardReuseIdentifier];
            break;
        default:
            break;
    }
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    cell = [[nib instantiateWithOwner:nil options:nil] firstObject];

    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(id)cell atIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case MVTipCellTypeBill:
            // Do nothing
            [(MVBillCell *)cell setDelegate:self];
            break;
        case MVTipCellTypeTip:
            // Initial value
            break;
        case MVTipCellTypeNumberOfPeople:
            // Do nothing
            break;
        case MVTipCellTypeEachPay:
            [(MVEachPayCell *)cell configureWithEachPayPrice:self.eachPayPrice];
            break;
        case MVTipCellTypeTotal:
            [(MVTotalCell *)cell configureWithPrice:self.totalPrice];
            break;
        default:
            break;
    }
}

#pragma mark - UITableViewDelegate Methods

// What

#pragma mark - Cell Delegate Methods

- (void)billCell:(MVBillCell *)cell didTapDoneWithAmount:(CGFloat)amount {
    self.originalBillPrice = amount;
}

- (void)tipCell:(MVTipCell *)cell didChangeTipValue:(CGFloat)tipValue {
    self.tipPrice = tipValue;
}

- (void)numberOfPeopleCell:(MVNumberOfPeopleCell *)cell didChangeNumberOfPeople:(NSUInteger)numberOfPeople {
    self.numberOfPeople = numberOfPeople;
}

- (void)eachPayCell:(MVEachPayCell *)cell didTapVenmoButton:(id)sender {
    /*
     Bill + tip
     ==========   -->  eachPay
     num Of ppl
     */
    [self calculateTip];
}


#pragma mark - Convenience

- (void)calculateTip {
    self.totalPrice = (self.originalBillPrice + self.tipPrice) / self.numberOfPeople;
}


@end
