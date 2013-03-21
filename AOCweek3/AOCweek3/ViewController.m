//
//  ViewController.m
//  AOCweek3
//
//  Created by Matthew T. Richter on 3/20/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (int)addNum:(NSInteger)n1 num2:(NSInteger)n2
{
    return (n1 + n2);
}
- (BOOL)compareNum:(NSInteger)isEqualn1 compareNum2:(NSInteger)isEqualn2
{
    if (isEqualn1 == isEqualn2){
        return YES;
    }
    else {
        return NO;
    }
}
- (NSMutableString *)appendString:(NSString *)str1 str2:(NSString *)str2
{
    
    if (str1 != nil || str2 != nil) {
       [appended stringByAppendingString:str2];
    }
    return appended;
}

- (void)viewDidLoad
{
    appended = [[NSMutableString alloc]init];
    string1 = [[NSString alloc]initWithString:@"Open-Sourcing"];
    string2 = [[NSString alloc]initWithString:@"Outsourcing"];

        
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
