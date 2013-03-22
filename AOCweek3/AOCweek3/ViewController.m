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


//-------------------- #1 create a function called add--------------------------

- (int)add:(NSInteger)n1 add2:(NSInteger)n2
{
    return (n1 + n2);
}

//-------------------- #2 create a BOOL function called compare--------------------------


- (BOOL)compare:(NSInteger)isEqualn1 compare2:(NSInteger)isEqualn2
{
    if (isEqualn1 == isEqualn2){
        return YES;
    }else{
        return NO;
    }
}

//-------------------- #3 create a function called append --------------------------

- (NSMutableString *)append:(NSString *)str1 append2:(NSString *)str2
{
    if (str1 != nil || str2 != nil) {
        [appended appendFormat:@"%@",str1];
        [appended appendFormat:@" %@",str2];
    }
    return appended;
}

//-------------------- #5 create a function called displayAlertWithString this also # 1 & 2 at teh bottom --------------------------

- (void)displayAlertWithString:(NSString *)alertString title:(NSString *)title
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:alertString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
    }
    
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0.2 blue:0.4 alpha:1]; /*#003366*/
// local variables used inthe various functions 
    
    appended = [[NSMutableString alloc]init];
    string1 = [[NSString alloc]initWithString:@"Frustrating!"];
    string2 = [[NSString alloc]initWithString:@"But super fun!"];
    numberToAdd1 = 4;
    numberToAdd2 = 32;
    numberToCompare1 = 38;
    numberToCompare2 = 38;
    
//-----------------------#4 Here we are calling the displayAlertWithString function and displaying the appended NSStrings  
    
    NSMutableString * appendedValue =   [self append:string1 append2:string2];
                                        [self displayAlertWithString:appendedValue title:@"I present you with appendedString ..."];
    
    NSLog(@"Appended String = %@",appendedValue);

// -----------------------#6 Called the add function and captured the return variable
    
    int sum =   [self add:numberToAdd1 add2:numberToAdd2];
               
    NSLog(@"%d",sum);

//------------------------- #9 call the compare function and pass the result if YES to the displayAlertWithString I also have a message if its no 
    
    bool compareDisplay = [self compare:numberToCompare1 compare2:numberToCompare2];
    
    if (compareDisplay == YES)
    {
        NSString *compareResult = [NSString stringWithFormat:@"Value %d is equal to value %d", numberToCompare1, numberToCompare2];
        [self displayAlertWithString:compareResult title:@"They're equal!"];
    }else{
        NSString *compareResult = [NSString stringWithFormat:@"Value %d is not equal to value %d", numberToCompare1, numberToCompare2];
        [self displayAlertWithString:compareResult title:@"They're not equal!"];
    }
// stringValue Returns the receiver’s value as a human-readable string.- (NSString *)stringValue --- description works as well
// below we are using the auto release pool for memory and this is where the int went to NSNumber then to NSString
    
//---------------------# 7 & 8 below bundle the int into NSNumber then convert to NSString and pass to displayAlertWithString & change title and message 
    
    NSNumber *sumToNumber = [[NSNumber alloc] initWithInt:sum];
    NSString *numberToString = [sumToNumber description];
    NSString *messageString = [NSString stringWithFormat:@"The number is %@",numberToString];
    [self displayAlertWithString:messageString title:@"What a pain!"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
