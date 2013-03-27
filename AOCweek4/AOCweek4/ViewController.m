//
//  ViewController.m
//  AOCweek4
//
//  Created by Matthew T. Richter on 3/26/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil) {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    UILabel *textFieldLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 100.0f, 30.0f)];
    if (textFieldLabel != nil) {
        textFieldLabel.text = @"Username:";
        textFieldLabel.backgroundColor = [UIColor lightGrayColor];
        textFieldLabel.textColor = [UIColor blackColor];
        
        [self.view addSubview:textFieldLabel];
    }
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (button != nil) {
        button.frame = CGRectMake (210.0f,50.0f,100.0f,30.0f);
        [button setTitle:@"Login" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
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

- (void)onClick
{
    userText = [textField text];
    
    NSLog(@"Username: %@", userText);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
