//
//  UITableViewCell+MVAdditions.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/18/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "UITableViewCell+MVAdditions.h"

@implementation UITableViewCell (MVAdditions)

+ (NSString *)standardReuseIdentifier {
    return NSStringFromClass(self);
}

@end
