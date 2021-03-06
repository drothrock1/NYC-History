//
//  HoursViewController.m
//  NYC Sights Tour
//
//  Created by Diane on 1/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HoursViewController.h"


#define TEXT_BGCOLORVAL_RED				250
#define TEXT_BGCOLORVAL_GREEN			250
#define TEXT_BGCOLORVAL_BLUE			250


@implementation HoursViewController

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
 // Custom initialization
 }
 return self;
 }
 */



- (void)viewDidLoad {
    [super viewDidLoad];
	self.title = NSLocalizedString(@"Hours", @"");
	[scrollView setScrollEnabled:YES];
	[scrollView setContentSize:CGSizeMake(320, 950)];
	[scrollView setBackgroundColor:[UIColor colorWithRed:TEXT_BGCOLORVAL_RED/255.0 green:TEXT_BGCOLORVAL_GREEN/255.0 blue:TEXT_BGCOLORVAL_BLUE/255.0 alpha:1]];
	
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
