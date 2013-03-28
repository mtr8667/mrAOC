//
//  ViewController.h
//  AOCweek4
//
//  Created by Matthew T. Richter on 3/26/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    UILabel *pleaseEnterUsernameLabel;
    UITextField *textField;
    NSString *userText;
    UILabel *textFieldLabel;
    NSDate *date;
    NSDateFormatter *dateFormatter;
    UIAlertView *alertDateView;
    NSString *message;
    UILabel *programmerLabel;
    
  

    
   
}
- (void)onClick:(UIButton*)button;
- (void)displayAlertWithDateString;
- (void)checkLogin;
- (void)displayProgrammer;

@end
