//
//  ViewController.m
//  AOCweek4
//
//  Created by Matthew T. Richter on 3/26/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import "ViewController.h"
#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController


- (void)displayAlertWithDateString
{
    
    date = [NSDate date];
    dateFormatter  = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        [dateFormatter setDateFormat:@"MMMM dd, yyyy hh:mm:ss a zzzz"];
        //[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        // [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        message = [dateFormatter stringFromDate:date];
        
        NSLog(@"Date = %@", message);
    }
    
    alertDateView = [[UIAlertView alloc] initWithTitle:@"Date" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertDateView != nil)
    {
        [alertDateView show];
    }
    
}

- (void)checkLogin
{



}

- (void)displayProgrammer
{


}


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil) {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    textFieldLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 100.0f, 30.0f)];
    if (textFieldLabel != nil) {
        textFieldLabel.text = @"Username:";
        textFieldLabel.backgroundColor = [UIColor lightGrayColor];
        textFieldLabel.textColor = [UIColor blackColor];
        
        [self.view addSubview:textFieldLabel];
    }
    
    UIButton *button0 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button0 != nil) {
        button0.frame = CGRectMake (210.0f,50.0f,100.0f,30.0f);
        [button0 setTitle:@"Login" forState:UIControlStateNormal];
        
        button0.tag = BUTTON_ZERO;
        [button0 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button0];
    }
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button1 != nil) {
        button1.frame = CGRectMake (10.0f,200.0f,100.0f,30.0f);
        [button1 setTitle:@"Show Date" forState:UIControlStateNormal];
        
        button1.tag = BUTTON_ONE;
        [button1 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button1];
    }
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (button2 != nil) {
        button2.frame = CGRectMake (10.0f,300.0f,25,25);
        [button2 setTitle:@"Show Date" forState:UIControlStateNormal];
        
        button2.tag = BUTTON_TWO;
        [button2 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button2];
    }

    pleaseEnterUsernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 60.0f)];
    if (pleaseEnterUsernameLabel != nil) {
        pleaseEnterUsernameLabel.backgroundColor =[UIColor colorWithRed:0.212 green:0.212 blue:0.212 alpha:1]; /*#363636*/
        
        pleaseEnterUsernameLabel.text = @"Please Enter Username";
        pleaseEnterUsernameLabel.textAlignment = NSTextAlignmentCenter;
        pleaseEnterUsernameLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:pleaseEnterUsernameLabel];

    }
    
    

   


    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
    if (button.tag == BUTTON_ONE) {
        [self displayAlertWithDateString];
    }
    
    if (button.tag == BUTTON_ZERO) {
        [self checkLogin];
    }
    
    if (button.tag == BUTTON_TWO) {
        [self displayProgrammer];
    }
    
    
//    userText = [textField text];
    
//    NSLog(@"Username: %@", userText);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
