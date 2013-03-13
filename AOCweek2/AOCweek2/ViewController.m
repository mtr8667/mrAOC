//
//  ViewController.m
//  AOCweek2
//
//  Created by Matthew T. Richter on 3/12/13.
//  Copyright (c) 2013 Matthew T. Richter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithRed:0.902 green:0.902 blue:0.902 alpha:1]; /*#e6e6e6*/
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    if (label1 != nil) {
        label1.backgroundColor =[UIColor colorWithRed:0.212 green:0.212 blue:0.212 alpha:1]; /*#363636*/
        
        label1.text =@"The World Is Flat";
        label1.textAlignment = NSTextAlignmentCenter;
        label1.textColor = [UIColor whiteColor];
    }
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 30.0f, 90.0f, 20.0f)];
    if (label2 != nil) {
        label2.backgroundColor =[UIColor colorWithRed:0.769 green:0.875 blue:0.608 alpha:1]; /*#c4df9b*/
        label2.text =@"Author:";
        label2.textAlignment = NSTextAlignmentRight;
        label2.textColor =[UIColor colorWithRed:0.204 green:0.302 blue:0.055 alpha:1]; /*#344d0e*/
    }
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(91.0f, 30.0f, 229.0f, 20.0f)];
    if (label3 != nil) {
        label3.backgroundColor =[UIColor colorWithRed:1 green:0.922 blue:0 alpha:1]; /*#ffeb00*/
        
        label3.text =@"Thomas L. Friedman";
        label3.textAlignment = NSTextAlignmentLeft;
        label3.textColor = [UIColor colorWithRed:0.392 green:0.478 blue:0.263 alpha:1]; /*#647a43*/
    }
    label4 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 60.0f, 90.0f, 20.0f)];
    if (label4 != nil) {
        label4.backgroundColor =[UIColor colorWithRed:0.851 green:0.933 blue:0.729 alpha:1]; /*#d9eeba*/
        label4.text =@"Published:";
        label4.textAlignment = NSTextAlignmentRight;
        label4.textColor =[UIColor colorWithRed:0.506 green:0.686 blue:0.235 alpha:1]; /*#81af3c*/
    }
    label5 = [[UILabel alloc] initWithFrame:CGRectMake(91.0f, 60.0f, 229.0f, 20.0f)];
    if (label5 != nil) {
        label5.backgroundColor =[UIColor colorWithRed:1 green:0.965 blue:0.561 alpha:1]; /*#fff68f*/
        
        label5.text =@"April 13, 2005";
        label5.textAlignment = NSTextAlignmentLeft;
        label5.textColor =[UIColor colorWithRed:0.671 green:0.843 blue:0.412 alpha:1]; /*#abd769*/
    }
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(91.0f, 90.0f, 229.0f, 20.0f)];
    if (label6 != nil) {
        label6.backgroundColor =[UIColor colorWithRed:1 green:0.984 blue:0.82 alpha:1]; /*#fffbd1*/
        
        label6.text =@"Summary:";
        label6.textAlignment = NSTextAlignmentLeft;
        label6.textColor =[UIColor colorWithRed:0.224 green:0.369 blue:0.004 alpha:1]; /*#395e01*/
    }
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 120.0f, 320.0f, 260.0f)];
    if (label7 != nil) {
        label7.backgroundColor =[UIColor colorWithRed:0.98 green:1 blue:0.949 alpha:1]; /*#fafff2*/
        label7.text =@"Friedman demystifies the new world for readers allowing them to make sense of the connected global scene unfolding before their eyes. With his inimitable ability to translate complex foreign policy and economic issues. An explaination is giving about how the flattening of the world happened at the dawn of the twenty-first century; what it means to countries, companies, communities, and individuals; and how govwrnments and societies can, and must, adapt.";
        label7.textAlignment = NSTextAlignmentCenter;
        label7.numberOfLines = 12;
        label7.textColor =[UIColor colorWithRed:0.153 green:0.247 blue:0.012 alpha:1]; /*#273f03*/
    }
    label8 = [[UILabel alloc] initWithFrame:CGRectMake(91.0f, 390.0f, 229.0f, 20.0f)];
    if (label8 != nil) {
        label8.backgroundColor =[UIColor colorWithRed:1 green:0.992 blue:0.925 alpha:1]; /*#fffdec*/
        label8.text =@"List of items:";
        label8.textAlignment = NSTextAlignmentLeft;
        label8.textColor =[UIColor colorWithRed:0.302 green:0.502 blue:0 alpha:1]; /*#4d8000*/
        
    }
    label9 = [[UILabel alloc] initWithFrame:CGRectMake(91.0f, 420.0f, 229.0f, 40.0f)];
    if (label9 != nil) {
        label9.backgroundColor =[UIColor colorWithRed:0.91 green:0.953 blue:0.839 alpha:1]; /*#e8f3d6*/
        label9.text =@"this is my label text";
        label9.textAlignment = NSTextAlignmentCenter;
        label9.numberOfLines = 2;
        label9.textColor =[UIColor colorWithRed:0.306 green:0.435 blue:0.11 alpha:1]; /*#4e6f1c*/
        
        
    }
    
    [self.view addSubview:label1];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    [self.view addSubview:label4];
    [self.view addSubview:label5];
    [self.view addSubview:label6];
    [self.view addSubview:label7];
    [self.view addSubview:label8];
    [self.view addSubview:label9];
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end