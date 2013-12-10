//
//  txMainViewController.m
//  TXUITabBarDemo
//
//  Created by tingxuan.qhm on 13-12-9.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txMainViewController.h"

@interface txMainViewController ()

@end

@implementation txMainViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITabBar *tabBar = [[UITabBar alloc]initWithFrame:CGRectMake(0, 420, 320, 60)];
    tabBar.tintColor = [UIColor redColor];
//    tabBar.backgroundColor = [UIColor redColor];
    
    UITabBarItem *tabBarItem01 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
   UITabBarItem *tabBarItem02 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:2];
    UITabBarItem *tabBarItem03 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:3];
   UITabBarItem *tabBarItem04 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMore tag:4];
    UITabBarItem * tabBarItem05 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:(5)];
    UITabBarItem * tabBarItem06 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:6];
    UITabBarItem * tabBarItem07 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:7];
    UITabBarItem * tabBarItem08 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:8];
    UITabBarItem * tabBarItem09 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:9];
    NSMutableArray * tabBarItemArray = [NSMutableArray arrayWithObjects:tabBarItem01,tabBarItem02,tabBarItem03,tabBarItem04,tabBarItem05,tabBarItem06, nil];
    [tabBar setItems:tabBarItemArray animated:YES];
    tabBar.delegate = self;
    [self.view addSubview:tabBar];
    CGFloat width = tabBar.itemWidth;
    CGFloat space = tabBar.itemSpacing;
    NSLog(@"tabBarItem的宽度为：%f",width);
    NSLog(@"tabBarItem的space为:%f",space);
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITabBarDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    NSInteger tag = item.tag;
    NSString * tagString = [NSString stringWithFormat:@"您选择了%d个tabBarItem",tag];
    UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"选择了tabBarItem" message:tagString delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [alertView show];
    NSLog(@"您选择的tag是：%d",tag);
}

@end
