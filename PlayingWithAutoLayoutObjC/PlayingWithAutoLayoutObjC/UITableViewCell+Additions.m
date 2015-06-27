//
//  UITableViewCell+Additions.m
//  PlayingWithAutoLayoutObjC
//
//  Created by Michael Vilabrera on 6/22/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "UITableViewCell+Additions.h"

@implementation UITableViewCell (Additions)

+ (NSString *)standardReuseIdentifier; {
    return NSStringFromClass(self);
}

@end
