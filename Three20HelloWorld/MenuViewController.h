//
//  MenuViewController.h
//  Three20HelloWorld
//
//  Created by tower on 11-9-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Three20/Three20.h>

typedef enum {
    MenuPageNone,
    MenuPageFirst,
    MenuPageSecond
}MenuPage;

@interface MenuViewController : TTTableViewController {
    MenuPage page;
}

@property (nonatomic) MenuPage page;

@end
