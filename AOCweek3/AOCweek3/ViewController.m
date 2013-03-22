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


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithRed:1 green:1 blue:0.961 alpha:1]; /*#fffff5*/
    
    appended = [[NSMutableString alloc]init];
//  numberToString = [[NSNumber alloc]init];
//  intToNumber = [[NSNumber alloc]init];
    string1 = [[NSString alloc]initWithString:@"Frustrating!"];
    string2 = [[NSString alloc]initWithString:@"But super fun!"];
    numberToAdd1 = 4;
    numberToAdd2 = 32;
    numberToCompare1 = 38;
    numberToCompare2 = 43;
    
    NSMutableString * appendedValue =   [self append:string1 append2:string2];
                                        [self displayAlertWithString:appendedValue title:@"I present you with appendedString"];
    
    NSLog(@"Appended String = %@",appendedValue);
    
    int sum =   [self add:numberToAdd1 add2:numberToAdd2];
               
    NSLog(@"%d",sum);

    bool compareDisplay = [self compare:numberToCompare1 compare2:numberToCompare2];
    
    if (compareDisplay == YES)
    {
        NSString *compareResult = [NSString stringWithFormat:@"Value %d is equal to value %d", numberToCompare1, numberToCompare2];
        [self displayAlertWithString:compareResult title:@"They're equal!"];
    }else{
        NSString *compareResult = [NSString stringWithFormat:@"Value %d is not equal to value %d", numberToCompare1, numberToCompare2];
        [self displayAlertWithString:compareResult title:@"They're not equal!"];
    }
    // stringValue Returns the receiver’s value as a human-readable string.- (NSString *)stringValue
    //[intToNumber initWithInt:sum];
    //[numberToString stringValue];
    //[self displayAlertWithString:numberToString];
    NSNumber *sumToNumber = [[NSNumber alloc] initWithInt:sum];
    NSString *numberToString = [sumToNumber stringValue];
    NSString *messageString = [NSString stringWithFormat:@"The number is %@",numberToString];
    [self displayAlertWithString:messageString title:@"What a pain!"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (int)add:(NSInteger)n1 add2:(NSInteger)n2
    {
        return (n1 + n2);
    }
- (BOOL)compare:(NSInteger)isEqualn1 compare2:(NSInteger)isEqualn2
{
    if (isEqualn1 == isEqualn2){
        return YES;
    }else{
        return NO;
    }
}

- (NSMutableString *)append:(NSString *)str1 append2:(NSString *)str2
{
    if (str1 != nil || str2 != nil) {
        [appended appendFormat:@"%@",str1];
        [appended appendFormat:@" %@",str2];
    }
    return appended;
}

- (void)displayAlertWithString:(NSString *)alertString title:(NSString *)title
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:alertString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
