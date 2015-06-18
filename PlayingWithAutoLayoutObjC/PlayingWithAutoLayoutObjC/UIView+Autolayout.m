//
//  UIView+Autolayout.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/17/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "UIView+Autolayout.h"

@implementation UIView (Autolayout)

+ (id) autolayoutView {
    UIView *view = [self new];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

@end
