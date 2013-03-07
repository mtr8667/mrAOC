//
//  AppDelegate.m
//  AOCweek1
//
//  Created by Matthew T. Richter on 3/6/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    float bouy = 3.1;
    bool isSurf = YES;
    int wind = 10;
    float waterTemp = 71.8f;
    float mEncuentro = bouy * 1.3f;
    float mCabarete = bouy * 1.1f;
    float mSeahourse = 1.15f;
    
    float encuentroH = bouy * mEncuentro ;
    int convertEncuentroH = (int)encuentroH;
    int waves = (mEncuentro + mCabarete + mSeahourse)/3 * bouy;
    NSLog(@"waves =%d", waves);
    NSLog(@"water temp =%.2f", waterTemp);
    
    NSLog(@"Encuentro height float = %.2f, Encuentro height int = %d", encuentroH, convertEncuentroH);
    
    if ((bouy >= 3)||(wind <= 8)){
        isSurf = YES;
        NSLog(@"Is there surf today=%d", isSurf);
    } else {
        NSLog(@"There is no surf today");
    }
    
    if ((wind <= 15)&&(waves >= 7)) {
        NSLog(@"Encuentro is the spot to surf today!");
    } else if ((wind <= 15)&&(waves >= 3)){
        NSLog(@"Cabarete should have something to surf!");
    } else {
        NSLog(@"Looks like we're cleaning pools all day!");
    }

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
