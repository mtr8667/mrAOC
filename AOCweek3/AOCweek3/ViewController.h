//
//  ViewController.h
//  AOCweek3
//
//  Created by Matthew T. Richter on 3/20/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// All of these variables and methods are accessable to the class/object viewController

{
    NSMutableString * appended;
    NSString * string1;
    NSString * string2;
    NSInteger numberToAdd1;
    NSInteger numberToAdd2;
    NSInteger numberToCompare1;
    NSInteger numberToCompare2;
}


- (int)add:(NSInteger)n1 add2:(NSInteger)n2;
- (BOOL)compare:(NSInteger)isEqualn1 compare2:(NSInteger)isEqualn2;;
- (NSMutableString *)append:(NSString *)str1 append2:(NSString *)str2;
- (void)displayAlertWithString:(NSString *)alertString title:(NSString *)title;



@end
