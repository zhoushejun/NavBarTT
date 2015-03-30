//
//  AppDelegate.m
//  NavBarTT
//
//  Created by shejun.zhou on 15/3/30.
//  Copyright (c) 2015年 YiBan.iOS. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

/** @name 获取屏幕 宽度、高度 */
// @{
/** @attention 勿删 */
#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
// @}end of 获取屏幕 宽度、高度
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController *viewController = [[ViewController alloc] init];
    UINavigationController *NavigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    NavigationController.navigationBar.hidden = NO;
    NavigationController.navigationBar.barTintColor = [UIColor orangeColor];
    NavigationController.navigationBar.translucent = NO;
    UIImage *bgImage = [UIImage imageNamed:@"ic_title_bar_bg_green"];
    [NavigationController.navigationBar setBackgroundImage:bgImage forBarMetrics:UIBarMetricsDefault];
    NavigationController.navigationBar.shadowImage = [UIImage imageNamed:@"ic_title_bar_bg_green_line"];
    
    UIImageView *imgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_title_bar_bg_green"]];
    imgV.frame = CGRectMake(0, -20, SCREEN_WIDTH, 20);
    [NavigationController.navigationBar addSubview:imgV];
    
    [self.window setRootViewController:NavigationController];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
