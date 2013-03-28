//
//  ViewController.m
//  AOCweek4
//
//  Created by Matthew T. Richter on 3/26/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

// Defined button names to index numbers for better readability 
#import "ViewController.h"
#define BUTTON_ZERO 0
#define BUTTON_ONE 1
#define BUTTON_TWO 2

@interface ViewController ()

@end

@implementation ViewController

// defined all local variables and methods in the viewController.h file

// this function displayAlertWithDateString uses NSDate and NSDateFormatter to grab the current date for us and customize how we display it. We then assign our result to an NSString message whihc is then passed into the alertView to be displayed
- (void)displayAlertWithDateString
{
    
    date = [NSDate date];
    dateFormatter  = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil) {
        [dateFormatter setDateFormat:@"MMMM dd, yyyy hh:mm:ss a zzzz"];
        //[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        // [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        message = [dateFormatter stringFromDate:date];
    }
    
    alertDateView = [[UIAlertView alloc] initWithTitle:@"Date" message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertDateView != nil)
    {
        [alertDateView show];
    }
    
}

// checkLogin function has two conditions - one if the user doesn't eneter a useer name then tell them they have to in a message window below and two if they have logged in successfully then tell them that as well in the message window below - we also call the dismissKeboard function after the last condition is met which pulls up the keyboard
- (void)checkLogin
{
    
    userText = [textField text];
    if (userText.length == 0) {
        NSString *usernameNeeded = [[NSString alloc] initWithString:@"Username cannot be empty"];
        pleaseEnterUsernameLabel.text = usernameNeeded;
        pleaseEnterUsernameLabel.textColor = [UIColor colorWithRed:1 green:0.2 blue:0.2 alpha:1]; /*#ff3333*/
    }else {
        NSString *usernameGood  = [NSString stringWithFormat:@"User: %@ has been logged in",userText];
        pleaseEnterUsernameLabel.text = usernameGood;
        pleaseEnterUsernameLabel.font = [UIFont systemFontOfSize:14.0f];
    }
    [self dismissKeyboard];

}

// this function displays the programmers name in a label after clicking on the infobutton
- (void)displayProgrammer
{
    programmerLabel.text = @"This application was created by: Matthew Richter";
}

// initially in the viewDidLoad function we set a background color then created all the labels necessary for the program in some instances we reduced the font to keep the app clean looking and fit required text without running into anotehr line
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
        
        [self.view addSubview:textFieldLabel];
    }
    
    pleaseEnterUsernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 320.0f, 60.0f)];
    if (pleaseEnterUsernameLabel != nil) {
        pleaseEnterUsernameLabel.backgroundColor =[UIColor colorWithRed:0.212 green:0.212 blue:0.212 alpha:1];
        pleaseEnterUsernameLabel.text = @"Please Enter Username";
        pleaseEnterUsernameLabel.textAlignment = NSTextAlignmentCenter;
        pleaseEnterUsernameLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:pleaseEnterUsernameLabel];
    }
    
    programmerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 430.0f, 320.0f, 30.0f)];
    if (programmerLabel != nil) {
        
        programmerLabel.font = [UIFont systemFontOfSize:14.0f];
        programmerLabel.textAlignment = NSTextAlignmentCenter;
        programmerLabel.backgroundColor = [UIColor lightGrayColor];
        
       [self.view addSubview:programmerLabel];
    }

// All buttons are created and positioned below - we've targeted and selected the onClick method and button tags have been set to allow us to use only one onClick function - we are also adding the subViews to the viewController object here as well.
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
        button2.frame = CGRectMake (10.0f,370.0f,25,25);
        [button2 setTitle:@"Show Date" forState:UIControlStateNormal];
        
        button2.tag = BUTTON_TWO;
        [button2 addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
//        [button2 addTarget:self action:@selector(dismissKeyboard)];
        [self.view addSubview:button2];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// this is our onClick function targeted and selected by our UIButtons - they all call seperate function related to what was required in the assignment
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

}

// this is the finction that is allowing us to get rid of the keyboard after we enter text into the textField. thanks stack overflow http://stackoverflow.com/questions/5306240/iphone-dismiss-keyboard-when-touching-outside-of-textfield

-(void)dismissKeyboard
{
    [textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
