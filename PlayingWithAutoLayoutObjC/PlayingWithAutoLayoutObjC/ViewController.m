//
//  ViewController.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/16/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Autolayout.h"

NSString *const kBillSuperViewHorizontal = @"H:|[_billSuperView]|";
NSString *const kBillSuperViewVertical = @"V:|[_billSuperView]";
NSString *const kTipSuperViewHorizontal = @"H:|[_tipSuperView]|";
NSString *const kTipSuperViewVertical = @"V:|[_billSuperView(==_tipSuperView)][_tipSuperView(==_billSuperView)]";
NSString *const kNOPSuperViewHorizontal = @"H:|[_nopSuperView]|";
NSString *const kNOPSuperViewVertical = @"V:[_tipSuperView(_nopSuperView)][_nopSuperView(==_tipSuperView)]|";
NSString *const kEPSuperViewHorizontal = @"H:|[_epSuperView]|";
NSString *const kEPSuperViewVertical = @"V:[_nopSuperView][_epSuperView(200)]";
NSString *const kTotalSuperViewHorizontal = @"H:|[_totalSuperView]|";
NSString *const kTotalSuperViewVertical = @"V:[_epSuperView][_totalSuperView(150)]|";

//NSString *const kBillTitleHorizontal = @"H:|-[_billTitle]";
//NSString *const kBillTitleVertical = @"V:|-(90)-[_billTitle(>=40)]";
//
//NSString *const kBillDisplayHorizontal = @"H:[_billTitle]-[_billDisplay(>=100,<=200)]-(<=50)-|";
//NSString *const kBillDisplayVertical = @"V:|-(90)-[_billDisplay(>=100)]";
//
////NSString *const kBillTipBorderHorizontal = @"H:|-[_billTipBorder]-|";
////NSString *const kBillTipBorderVertical = @"V:[_billDisplay]-(10)-[_billTipBorder(1)]";
//
//NSString *const kTipTitleHorizontal = @"H:|-[_tipTitle]";
//NSString *const kTipTitleVertical = @"V:[_billTipBorder]-[_tipTitle]-(>=50)-|";
//
//NSString *const kTipDisplayHorizontal = @"H:[_tipTitle]-[_tipDisplay]";
//NSString *const kTipDisplayVertical = @"V:[_billTipBorder]-[_tipDisplay]-(>=50)-|";
//
//NSString *const kTipSliderHorizontal = @"H:[_tipDisplay]-[_tipSlider]-|";
//NSString *const kTipSliderVertical = @"V:[_billTipBorder]-[_tipSlider]-(>=50)-|";

@interface ViewController ()

@property (nonatomic) UIView *billSuperView;
@property (nonatomic) UIView *tipSuperView;
@property (nonatomic) UIView *nopSuperView;
@property (nonatomic) UIView *epSuperView;
@property (nonatomic) UIView *totalSuperView;

@property (nonatomic) NSDictionary *viewsDictionary;
@property (nonatomic) NSDictionary *metricsDictionary;

//@property (nonatomic) UILabel *billTitle;
//@property (nonatomic) UITextField *billDisplay;
//@property (nonatomic) UIView *billTipBorder;
//@property (nonatomic) UILabel *tipTitle;
//@property (nonatomic) UILabel *tipDisplay;
//@property (nonatomic) UISlider *tipSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"TipTap";
    [self createUIComponents];
    [self addUIComponentsToView:self.view];
    [self.view addConstraints:[self constraints]];
}

- (void)createUIComponents {
    self.billSuperView = [UIView autolayoutView];
    self.billSuperView.backgroundColor = [UIColor lightGrayColor];
    self.tipSuperView = [UIView autolayoutView];
    self.tipSuperView.backgroundColor = [UIColor whiteColor];
    self.nopSuperView = [UIView autolayoutView];
    self.nopSuperView.backgroundColor = [UIColor lightGrayColor];
    self.epSuperView = [UIView autolayoutView];
    self.epSuperView.backgroundColor = [UIColor whiteColor];
//    self.totalSuperView = [[UIView alloc] init];
//    self.totalSuperView.translatesAutoresizingMaskIntoConstraints = NO;
//    self.totalSuperView.backgroundColor = [UIColor lightGrayColor];
    self.viewsDictionary = NSDictionaryOfVariableBindings(_billSuperView, _tipSuperView, _nopSuperView, _epSuperView);
    self.metricsDictionary = @{@"billSuperViewHeight":@100, @"_tipSuperViewHeight":@100};
}

- (void)addUIComponentsToView:(UIView *)view {
    [view addSubview:self.billSuperView];
    [view addSubview:self.tipSuperView];
    [view addSubview:self.nopSuperView];
    [view addSubview:self.epSuperView];
//    [view addSubview:self.totalSuperView];
}

- (NSArray *)billSuperViewContraints {
    NSMutableArray *result = [NSMutableArray array];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillSuperViewHorizontal
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillSuperViewVertical
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    return [NSArray arrayWithArray:result];
}

- (NSArray *)tipSuperViewConstraints {
    NSMutableArray *result = [NSMutableArray array];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipSuperViewHorizontal
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipSuperViewVertical
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    return [NSArray arrayWithArray:result];
}

- (NSArray *)nopSuperViewConstraints {
    NSMutableArray *result = [NSMutableArray array];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kNOPSuperViewHorizontal
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kNOPSuperViewVertical
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    return [NSArray arrayWithArray:result];
}

- (NSArray *)epSuperViewConstraints {
    NSMutableArray *result = [NSMutableArray array];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kEPSuperViewHorizontal
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kEPSuperViewVertical
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    return [NSArray arrayWithArray:result];
}

- (NSArray *)totalSuperViewConstraints {
    NSMutableArray *result = [NSMutableArray array];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTotalSuperViewHorizontal
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTotalSuperViewVertical
                                                                        options:0
                                                                        metrics:nil
                                                                          views:self.viewsDictionary]];
    return [NSArray arrayWithArray:result];
}

- (NSArray *)constraints {
    NSMutableArray *result = [NSMutableArray array];
    
    [result addObjectsFromArray:[self billSuperViewContraints]];
    [result addObjectsFromArray:[self tipSuperViewConstraints]];
    [result addObjectsFromArray:[self nopSuperViewConstraints]];
    [result addObjectsFromArray:[self epSuperViewConstraints]];
//    [result addObjectsFromArray:[self totalSuperViewConstraints]];
    
    return [NSArray arrayWithArray:result];
}

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    self.title = @"TipTap";
//    [self createUIComponents];
//    [self addUIComponentsToView:self.view];
//    [self.view addConstraints:[self constraints]];
//}
//
//- (void)createUIComponents {

//    
//    self.billTitle = [[UILabel alloc] init];
//    self.billTitle.translatesAutoresizingMaskIntoConstraints = NO;
//    self.billTitle.text = @"bill:";
//    
//    self.billDisplay = [[UITextField alloc] init];
//    self.billDisplay.translatesAutoresizingMaskIntoConstraints = NO;
//    self.billDisplay.keyboardType = UIKeyboardTypeDecimalPad;
//    CGFloat billDisplayFontSize = 36.0f;
//    UIFont *billDisplayFont = [self.billDisplay.font fontWithSize:billDisplayFontSize];
//    self.billDisplay.font = billDisplayFont;
//    self.billDisplay.placeholder = @"$";
//
////    self.billTipBorder = [[UIView alloc] init];
////    self.billTipBorder.translatesAutoresizingMaskIntoConstraints = NO;
////    self.billTipBorder.backgroundColor = [UIColor blackColor];
//    
//    self.tipTitle = [[UILabel alloc] init];
//    self.tipTitle.translatesAutoresizingMaskIntoConstraints = NO;
//    self.tipTitle.text = @"tip:";
//    
//    self.tipDisplay = [[UILabel alloc] init];
//    self.tipDisplay.translatesAutoresizingMaskIntoConstraints = NO;
//    CGFloat tipDisplayFontSize = 36.0f;
//    UIFont *tipDisplayFont = [self.tipDisplay.font fontWithSize:tipDisplayFontSize];
//    self.tipDisplay.font = tipDisplayFont;
//    
//    self.tipSlider = [[UISlider alloc] init];
//    self.tipSlider.translatesAutoresizingMaskIntoConstraints = NO;
//    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_2);
//    self.tipSlider.transform = transform;
//}
//
//- (void)addUIComponentsToView:(UIView *)view {
//    [view addSubview:self.billSuperView];
//    
//    
//    [view addSubview:self.billTitle];
//    [view addSubview:self.billDisplay];
//    
////    [view addSubview:self.billTipBorder];
//    [view addSubview:self.tipTitle];
//    [view addSubview:self.tipDisplay];
//    [view addSubview:self.tipSlider];
//}
//
//- (NSArray *)billTitleConstraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_billTitle);
//    
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillTitleHorizontal
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillTitleVertical
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    
//    return [NSArray arrayWithArray:result];
//}
//
//- (NSArray *)billDisplayConstraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_billTitle, _billDisplay);
//    
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillDisplayHorizontal
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillDisplayVertical
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    
//    return [NSArray arrayWithArray:result];
//}
//
//- (NSArray *)billTipBorderConstraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_billDisplay, _billTipBorder);
//    
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillTipBorderHorizontal
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kBillTipBorderVertical
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    return [NSArray arrayWithArray:result];
//}
//
//- (NSArray *)tipTitleConstraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_billTipBorder, _tipTitle);
//    
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipTitleHorizontal
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipTitleVertical
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    
//    return [NSArray arrayWithArray:result];
//}
//
//- (NSArray *)tipDisplayConstraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_tipTitle, _tipDisplay, _billTipBorder);
//    
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipDisplayHorizontal
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipDisplayVertical
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    
//    return [NSArray arrayWithArray:result];
//}
//
//- (NSArray *)tipSliderConstraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_tipDisplay, _tipSlider, _billTipBorder);
//    
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipSliderHorizontal
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    [result addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:kTipSliderVertical
//                                                                        options:0
//                                                                        metrics:nil
//                                                                          views:viewsDictionary]];
//    return [NSArray arrayWithArray:result];
//}
//
//- (NSArray *)constraints {
//    NSMutableArray *result = [[NSMutableArray alloc] init];
//    [result addObjectsFromArray:[self billTitleConstraints]];
//    [result addObjectsFromArray:[self billDisplayConstraints]];
//    [result addObjectsFromArray:[self billTipBorderConstraints]];
//    [result addObjectsFromArray:[self tipTitleConstraints]];
//    [result addObjectsFromArray:[self tipDisplayConstraints]];
//    [result addObjectsFromArray:[self tipSliderConstraints]];
//    return [NSArray arrayWithArray:result];
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
