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
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    if (mutableArray != nil)
    {
        for (int i=0; i<10; i++)
        {
            NSNumber *number = [[NSNumber alloc] initWithFloat:(1.5f + (float)i)];
            if (number != nil)
            {
                [mutableArray addObject:number];
            }
        }
    }
    for (int i=0; i< [mutableArray count]; i++)
    {
        NSNumber *number = [mutableArray objectAtIndex:i];
        if (number != nil)
        {
            float temp = [number floatValue];
            NSLog(@"temp = %f", temp);
        }
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Loading" message:@"Please wait ..." delegate:nil cancelButtonTitle:nil otherButtonTitles:nil];
    if (alertView != nil)
    {
        [alertView show];
        
        UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        
        if (alertView != nil)
        {
            indicator.center = CGPointMake((alertView.bounds.size.width/2.0f), (alertView.bounds.size.height/2.0f)+ 32.0f);
            [indicator startAnimating];
            [alertView addSubview:indicator];
        }
    }
   for (int i=0; i<100000; i++)
    {
    }
    [alertView dismissWithClickedButtonIndex:0 animated:TRUE];
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"What's Up" message:@"The game is on!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if (alertView != nil) {
        [alertView show];
        
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
