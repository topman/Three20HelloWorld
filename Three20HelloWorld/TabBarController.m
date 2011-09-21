//
//  TabBarController.m
//  Three20HelloWorld
//
//  Created by tower on 11-9-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "TabBarController.h"


@implementation TabBarController

-(void) viewDidLoad{
    [super viewDidLoad];
    [self setTabURLs: [NSArray arrayWithObjects:@"tt://menu/1", @"tt://menu/2", nil]];
}

@end
