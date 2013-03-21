//
//  ViewController.h
//  AOCweek3
//
//  Created by Matthew T. Richter on 3/20/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
NSMutableString * appended;
    NSString * string1;
    NSString * string2;
}

- (int)addNum:(NSInteger)n1 num2:(NSInteger)n2;
- (BOOL)compareNum:(NSInteger)isEqualn1 compareNum2:(NSInteger)isEqualn2;;
- (NSMutableString *)appendString:(NSString *)str1 str2:(NSString *)str2;




@end
