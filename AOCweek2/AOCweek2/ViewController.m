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
// place news feeds that need to be initialized etc...
{
    self.view.backgroundColor = [UIColor colorWithRed:1 green:1 blue:0.961 alpha:1]; /*#fffff5*/
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
//close any connection we need to close - clean up after yourself
{
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
//set up UI before its presented to the user - select defaults etc...
{
//  Creation of individual NSStrings to populate the NSArray
//  Creation and allocation of the NSMutableString

    item1 = [[NSString alloc]initWithString:@"Open-Sourcing"];
    item2 = [[NSString alloc]initWithString:@"Outsourcing"];
    item3 = [[NSString alloc]initWithString:@"Offshoring"];
    item4 = [[NSString alloc]initWithString:@"Supply-Chaining"];
    item5 = [[NSString alloc]initWithString:@"Insourcing"];
  
    muteItems = [[NSMutableString alloc]init];

    
  //-------- working solution but using a parser for one long NSString -------------
/*
    NSString *items = [[NSString alloc] initWithString:@"Open-Sourcing, Outsourcing, Offshoring, Supply-Chaining, Insourcing"];
    
    itemsArray = [items componentsSeparatedByString:@","];
*/
    

   itemsArray = [NSArray arrayWithObjects:item1,item2,item3,item4,item5, nil];
    

//  set up the int count to capture the length of the NSArray. With a break point here I initially figured out that my NSString was just one plain old string when not parsed.
    
    count = [itemsArray count];

//  Print outs to the console to help me out
    NSLog(@"%@",itemsArray);
    NSLog(@"count = %d", count);
    

//  For loop looping through the immutable NSArray pulling out the NSString objects placing them into a NSMutableString. There are a few conditions set up to format the list items label correctly with no comma at index 0, a comma indexes 1-3, and a comma and at index 4. Inside the for loop we are also initiating the NSMutableString that was allocated outside of the loop. So if I'm using the terminology correctly the NSMutableString is being populated and instantiated inside the loop.
    for (int i=0; i<count; i++) {
        if (i==4) {
            [muteItems appendFormat:@", and%@",[itemsArray objectAtIndex:i]];
        }
        else if (i==0){
            [muteItems appendFormat:@"%@",[itemsArray objectAtIndex:i]];
        }
        else {
            [muteItems appendFormat:@", %@",[itemsArray objectAtIndex:i]];
        }
    }
    
//  Print out of the NSMutableString
    NSLog(@"list Items =%@",muteItems);
    
/*  ---------------------------------------------------------------------------------
 
 below was the first thing I got working but come to find out I was just passing in 1 string when I wasn't using the parser to separate the string! Talk about a false positive both the SIM and the console log showed what I wanted but it wasn't correct. When I did use the parser I got the same string 5 times but also got what I wanted in the SIM but the console log started to reveal the problem. Your feed back made me realize that I was creating an object in the loop. Both parts, allocating and initiating! Through a review of my notes and some of the videos and more importantly learning how to listen/understand Xcode through the popup help and console log better I knew where the code was breaking. I re-read the assignment and tried to do everything a word/sentence at a time. So once I set up the mutableString I allocated it!! Then through some trial and error and looking at my notes I got the syntax correct in the loop only initiating the mutable String. Still wasn't out of the woods until the break I put in and a pop-up help tell me that the initWithString wasn't the correct. I had already been in the (jump to definition) section a lot(!) and knew I had to append so I swapped out the initWithString for the appendFormat and success! A quick for if, else if, else later and finally everything was working.

    
    
    for (int i=0; i<count; i++) {
       
        listItems = [[NSMutableString alloc]initWithFormat:@"%@",[itemsArray objectAtIndex:i]];
    
        
        NSLog(@"list Items =%@",listItems);
      
    }

   NSLog(@"list Items =%@",listItems); 
*/    

    
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
    label6 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 20.0f)];
    if (label6 != nil) {
        label6.backgroundColor =[UIColor colorWithRed:1 green:0.984 blue:0.82 alpha:1]; /*#fffbd1*/
        
        label6.text =@"Summary:";
        label6.textAlignment = NSTextAlignmentLeft;
        label6.textColor =[UIColor colorWithRed:0.224 green:0.369 blue:0.004 alpha:1]; /*#395e01*/
    }
    label7 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 320.0f, 270.0f)];
    if (label7 != nil) {
        label7.backgroundColor =[UIColor colorWithRed:0.98 green:1 blue:0.949 alpha:1]; /*#fafff2*/
        label7.text =@"Friedman demystifies the new world for readers allowing them to make sense of the connected global scene unfolding before their eyes. With his inimitable ability to translate complex foreign policy and economic issues. An explanation is giving about how the flattening of the world happened at the dawn of the twenty-first century; what it means to countries, companies, communities, and individuals; and how governments and societies can, and must, adapt.";
        label7.textAlignment = NSTextAlignmentCenter;
        label7.numberOfLines = 12;
        label7.textColor =[UIColor colorWithRed:0.153 green:0.247 blue:0.012 alpha:1]; /*#273f03*/
    }
    label8 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 390.0f, 320.0f, 20.0f)];
    if (label8 != nil) {
        label8.backgroundColor =[UIColor colorWithRed:1 green:0.992 blue:0.925 alpha:1]; /*#fffdec*/
        label8.text =@"List of items:";
        label8.textAlignment = NSTextAlignmentLeft;
        label8.textColor =[UIColor colorWithRed:0.302 green:0.502 blue:0 alpha:1]; /*#4d8000*/
        
    }
    label9 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 410.0f, 320.0f, 50.0f)];
    if (label9 != nil) {
        label9.backgroundColor =[UIColor colorWithRed:0.91 green:0.953 blue:0.839 alpha:1]; /*#e8f3d6*/
        label9.text = muteItems;
        label9.textAlignment = NSTextAlignmentCenter;
        label9.numberOfLines = 2;
        label9.textColor =[UIColor colorWithRed:0.306 green:0.435 blue:0.11 alpha:1]; /*#4e6f1c*/
        
        
    }
    //Adding subview to teh base UIview for all of our labels - they will be children of the parent base UIView
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
