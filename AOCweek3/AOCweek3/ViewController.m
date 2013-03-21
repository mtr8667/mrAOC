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

+ (int)add:(NSInteger)n1 add2:(NSInteger)n2
{
    return (n1 + n2);
}
- (BOOL)compare:(NSInteger)isEqualn1 compare2:(NSInteger)isEqualn2
{
    if (isEqualn1 == isEqualn2){
        return YES;
    }
    else {
        return NO;
    }
}
- (NSMutableString *)append:(NSString *)str1 append2:(NSString *)str2
{
    
    if (str1 > 0 || str2 > 0) {
        [appended appendFormat:@"%@",str1];
        [appended appendFormat:@", %@",str2];
     
    }
    return appended;
}

- (void)viewDidLoad
{
    appended = [[NSMutableString alloc]init];

    string1 = [[NSString alloc]initWithString:@"Warning!"];
    string2 = [[NSString alloc]initWithString:@"you are currently not connected to the internet!"];
    numberToAdd1 = 4;
    numberToAdd2 = 6;
    numberToCompare1 = 45;
    numberToCompare1 = 38;
    
    NSMutableString * appendedValue = [self append:string1 append2:string2];
    
    NSLog(@"Appended String = %@",appendedValue);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
