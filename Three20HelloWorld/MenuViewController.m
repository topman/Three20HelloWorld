//
//  MenuViewController.m
//  Three20HelloWorld
//
//  Created by tower on 11-9-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MenuViewController.h"


@implementation MenuViewController
@synthesize page;

-(id) initWithMenu:(MenuPage)_page{
    if (self = [super init]){
        self.page = _page;
    }
    return self;
}

-(NSString *) nameForMenuPage:(MenuPage)_page{
    switch (_page) {
        case MenuPageFirst:
            return @"frist";
            break;
        case MenuPageSecond:
            return @"second";
        default:
            return @"";
            break;
    }
}

-(id) init{
    if (self = [super init]){
        self.page = MenuPageNone;
    }
    return self;
}

-(void) setPage:(MenuPage)_page{
    page = _page;
    
    self.title = [self nameForMenuPage:page];
    
    UIImage* image = [UIImage imageNamed:@"tab.png"];
    self.tabBarItem = [[[UITabBarItem alloc] initWithTitle:self.title image:image tag:0] autorelease];
    
    self.navigationItem.rightBarButtonItem =
    [[[UIBarButtonItem alloc] initWithTitle:@"Order" style:UIBarButtonItemStyleBordered
                                     target:@"tt://order?waitress=Betty&ref=toolbar"
                                     action:@selector(openURLFromButton:)] autorelease];
    
    if (_page == MenuPageFirst) {
        self.dataSource = [TTSectionedDataSource dataSourceWithObjects:
                           @"Food",
                           [TTTableTextItem itemWithText:@"Porridge" URL:@"tt://food/porridge"],
                           [TTTableTextItem itemWithText:@"Bacon & Eggs" URL:@"tt://food/baconeggs"],
                           [TTTableTextItem itemWithText:@"French Toast" URL:@"tt://food/frenchtoast"],
                           @"Drinks",
                           [TTTableTextItem itemWithText:@"Coffee" URL:@"tt://food/coffee"],
                           [TTTableTextItem itemWithText:@"Orange Juice" URL:@"tt://food/oj"],
                           @"Other",
                           [TTTableTextItem itemWithText:@"Just Desserts" URL:@"tt://menu/4"],
                           [TTTableTextItem itemWithText:@"Complaints" URL:@"tt://about/complaints"],
                           nil];
    } else if (_page == MenuPageSecond) {
        self.dataSource = [TTSectionedDataSource dataSourceWithObjects:
                           @"Menu",
                           [TTTableTextItem itemWithText:@"Mac & Cheese" URL:@"tt://food/macncheese"],
                           [TTTableTextItem itemWithText:@"Ham Sandwich" URL:@"tt://food/hamsam"],
                           [TTTableTextItem itemWithText:@"Salad" URL:@"tt://food/salad"],
                           @"Drinks",
                           [TTTableTextItem itemWithText:@"Coke" URL:@"tt://food/coke"],
                           [TTTableTextItem itemWithText:@"Sprite" URL:@"tt://food/sprite"],
                           @"Other",
                           [TTTableTextItem itemWithText:@"Just Desserts" URL:@"tt://menu/4"],
                           [TTTableTextItem itemWithText:@"Complaints" URL:@"tt://about/complaints"],
                           nil];
    }
}

@end
