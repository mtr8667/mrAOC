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
    

    
    // BOOL object
    BOOL isSurf = YES;
    
    // float variables 
    float bouy = 2.1f;
    float waterTemp = 71.8f;
    float mEncuentro = bouy * 1.3f;
    float mCabarete = bouy * 1.1f;
    float mSeahourse = 1.15f;
    float encuentroH = bouy * mEncuentro ;
    
    // int variables - I realize that I'm not casting any of the floats to int(s) in the waves var - this is intentional the var is only supposed to make a rough calculation sort of like wetting your finger to see which way the wind is coming from.  There are other var(s) that get very precise for wave height
    int wind = 10;
    int convertEncuentroH = (int)encuentroH;
    int waves = (mEncuentro + mCabarete + mSeahourse)/3 * bouy;
    int dEncuentro = 7;
    int dSeahourse = 18;
    int dCabarete = 13;
    
    
    // print out of the vaiables waves, waterTemp, encuentroH & convertEncuentroH the ladder two variables show the required example of casting 
    NSLog(@"waves =%d", waves);
    NSLog(@"water temp =%.2f", waterTemp);
    NSLog(@"Encuentro height float = %.2f, Encuentro height int = %d", encuentroH, convertEncuentroH);
    NSLog(@"Distance to Encuentro =%d", dEncuentro);
    NSLog(@"Distance to Cabarete =%d", dCabarete);
    NSLog(@"Distance to Seahourse Ranch =%d", dSeahourse);
    
    //data set up for nested loop in a loop - got some help from; Objective-C programming the big nerd ranch guide and Learning Cocoa with Objective-C
    NSString * string = @"Bobby,Patrick,Matty,Spongey,Dropin,Cutuoff";
    NSString * string1 = @"Encuentro,Seahorse,Cabarete";
    NSString * string2 = @"2ft,2.7ft,3.2ft,5ft,7.2ft,9.8ft,EPIC";
    //NSString * string3 = @"1.4ft,2.3ft,2.7ft,4.3ft,6.4ft,8ft,EPIC";   ------not used------
    //NSString * string4 = @"1.1ft,1.9ft,2.4ft,4ft,5.8ft,6.5ft,6.8";    ------not used------
    
    
    NSArray * array = [string componentsSeparatedByString:@","];
    NSArray * array1 = [string1 componentsSeparatedByString:@","];
    NSArray * array2 = [string2 componentsSeparatedByString:@","];
    //NSArray * array3 = [string3 componentsSeparatedByString:@","];    ------not used------
    //NSArray * array4 = [string4 componentsSeparatedByString:@","];    ------not used------
    //NSObject * data = [array2,array3,array4];  Trying to fill my placeholders for historical data in the nested loop loop
    //int count = [array1 count];                                       ------not used------
    int count1 = [array2 count];
    
    int historicalData =  3;
   
    
    // Trying to fill my placeholders for historical data in the nested loop loop
    /*char arrrayWaveData[8][3] =                                       ------not used------
    {
        {@"Encuentro,Seahorse,Caberet"},
        {@"2ft",},
        {},
        {},
        {},
        {},
        {},
        {}
    };
    */
    
    // my and or comparison using float, int and a BOOL with YES and NO values.  Simple, if the bouy is reading above or 3qual to 3ft or the wind is less than 10mph and the water temp is below 76 we're surfing! If those conditions are not met then usually its beat.  
    if ((bouy >= 4)||((wind <= 15) && (waterTemp < 76))){
        isSurf = YES;
        NSLog(@"Is there surf today=%d", isSurf);
    } else {
        isSurf = NO;
        NSLog(@"Is there surf  today=%d", isSurf);
    }
    
    // my if else if else check - We are initially checking the best surf break encuentro. For it to be good the wind have to be less than 10mph and the surf at least 7ft to break on the second reef. Then if Encuentro is beat we check to see if there are waves at Caberet which is a little more protected by the wind and have a nice shape even on pretty small waves. For there to be waves here the wind should be less than 15mph and the waves should be at least 3ft. If these two break are prodcuing waves then we have to work to make some cash! 
    if ((wind <= 10)&&(waves >= 7)) {
        NSLog(@"Encuentro is the spot to surf today!");
    } else if ((wind <= 15)&&(waves >= 3)){
        NSLog(@"Cabarete should have something to surf!");
    } else {
        NSLog(@"Looks like we're cleaning pools all day!");
    }

    //single loop printing values to the console. Here we're just printing out the minutes on our ride to Cabarete.
    for (int n=0; n < dCabarete; n++) {
        NSLog(@"Minutes heading to the surf =%d", n );
    }
    
    // nested loop in loop pulling a weeks worth of historical wave height data from three surf breaks
    for (int i=0; i < historicalData; i++) {
            NSLog(@"Surf Break =%i: %s\n", i, [[array1 objectAtIndex:i]UTF8String]);
        for (int j=0; j< count1; j++) {
            NSLog(@"Placeholder for historical data =%d, Surf break =%d", j, i);
        }
    }
    
    //determining the surfers that will be traveling by car and displaying their names. We are looping through our array until the while condition is met.
    int surfers = 0;
    while (surfers < 3) {
        
        
        NSLog(@"Surfer traveling by car =%i: %s\n", surfers,[[array objectAtIndex:surfers]UTF8String]);
        
        surfers++;
    
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
