//
//  ViewController.m
//  SegmentedControlTest01
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
	UISegmentedControl *segment;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIImage *img1 = [UIImage imageNamed:@"ball1.png"];
	UIImage *img2 = [UIImage imageNamed:@"ball2.png"];
	UIImage *img3 = [UIImage imageNamed:@"ball3.png"];
	
//	NSArray *items = @[img1, img2, img3];
	NSArray *items = [NSArray arrayWithObjects:img1, img2,img3, nil];
	
	segment = [[UISegmentedControl alloc] initWithItems:items];
	segment.frame = CGRectMake(20, 200, 300, 40);
	
	[self.view addSubview:segment];
	
	segment.selectedSegmentIndex = 1;
	[segment addTarget:self action:@selector(handle:) forControlEvents:UIControlEventValueChanged];
	
}

- (void)handle:(UISegmentedControl *)sender {
	switch (sender.selectedSegmentIndex) {
		case 0:
			NSLog(@"이미지1");
			break;
		case 1:
			NSLog(@"이미지2");
			break;
		case 2:
			NSLog(@"이미지3");
			break;
			
		default:
			break;
	}
}

- (IBAction)chooseNumber:(id)sender {
	UISegmentedControl *control = (UISegmentedControl *)sender;
	NSString *str = [control titleForSegmentAtIndex:control.selectedSegmentIndex];
	NSLog(@"Index : %d - Title : %@",control.selectedSegmentIndex, str);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
