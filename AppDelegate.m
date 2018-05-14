//
//  NYC Sights Tour
//
//  Created by Brad on 6/1/10.
//  Copyright 2010 __Rothrock Group, LLC__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

//@synthesize navigationController; 
@synthesize window;
@synthesize rootTabBarController;

- (void)dealloc
{
//	[navigationController release];
	[rootTabBarController release];
	[window release];
	
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
	// add the navigation controller's view to the window
//	[window addSubview:navigationController.view];
//	[window addSubview:[rootTabBarController view]];
    [self.window setRootViewController:rootTabBarController];

    
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];

    if (screenBounds.size.height == 568) {
        
        
 
 UIImage *myImage = [UIImage imageNamed:@"InfoScreen-568h@2x.png"];
 UIImageView *myImageView = [[UIImageView alloc] initWithImage:myImage];
 
 
 [myImageView setFrame:CGRectMake(0, 0, 320, 528)];
 
 [window addSubview:myImageView];
 [window sendSubviewToBack:myImageView];
 [myImageView release];

    } else

    {
        UIImage *myImage = [UIImage imageNamed:@"InfoScreen.png"];
        UIImageView *myImageView = [[UIImageView alloc] initWithImage:myImage];
        
        
       // [myImageView setFrame:CGRectMake(0, 0, 320, 480)];
        
        [window addSubview:myImageView];
        [window sendSubviewToBack:myImageView];
        [myImageView release];
        
    }
 
        /*
 
                //Container for picture
        CGRect imageLabelRect = CGRectMake(0,100, 320, 568);
        UIImageView *imageLabel = [[UIImageView alloc] initWithFrame:imageLabelRect];
        
        imageLabel = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default-568h@2x.png"]];
        
        imageLabel.contentMode = UIViewContentModeScaleAspectFit;
        //imageLabel.contentMode = UIViewContentModeBottomLeft;
        
        
        [imageLabel setClipsToBounds:YES];
   
        [window addSubview:imageLabel];
        [window sendSubviewToBack:imageLabel];

        [imageLabel release];
        
        
        
    } else
    {
        CGRect imageLabelRect = CGRectMake(0, 0, 320, 420);
    UIImageView *imageLabel = [[UIImageView alloc] initWithFrame:imageLabelRect];
    
    imageLabel = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Default-568h@2x.png"]];
    
    imageLabel.contentMode = UIViewContentModeScaleAspectFit;
//        imageLabel.contentMode = UIViewContentModeBottomLeft;
    
    [window addSubview:imageLabel];
    [window sendSubviewToBack:imageLabel];
    
    [imageLabel release];
    }
*/
    
/*
	
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    if (screenBounds.size.height == 568) {
        CGRect myImageRect = CGRectMake(0.0f, 12.0f, 320.0f, 548.0f);
        UIView *backgroundView = [[UIView alloc] initWithFrame: myImageRect];
    	backgroundView.contentMode = UIViewContentModeScaleAspectFit;
        backgroundView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Default-568h@2x.png"]];
    
        [backgroundView setAlpha:0.75];
        [window addSubview:backgroundView];
        [window sendSubviewToBack:backgroundView];
        [backgroundView release];

    } else

*/
    
    /*
    {
     
    
    CGRect myImageRect = CGRectMake(0.0f, 12.0f, 320.0f, 528.0f);
	UIView *backgroundView = [[UIView alloc] initWithFrame: myImageRect];
        backgroundView.contentMode = UIViewContentModeScaleAspectFit;
	backgroundView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Icon72@2x.png"]];
        [backgroundView setAlpha:0.75];
        [window addSubview:backgroundView];
        [window sendSubviewToBack:backgroundView];
        [backgroundView release];

    }
*/
    
  /*   
    {
        UIImage *myImage = [UIImage imageNamed:@"Default-568h@2x.png"];
        UIImageView *myImageView = [[UIImageView alloc] initWithImage:myImage];
        
        
        [myImageView setFrame:CGRectMake(0, 0, 320, 528)];
        
        [window addSubview:myImageView];
        [window sendSubviewToBack:myImageView];
        [myImageView release];
    }
    
    */
    
  /*
    CGRect myImageRect = CGRectMake(0.0f, 12.0f, 320.0f, 528.0f);
    UIImageView *someImageView = [[UIImageView alloc] initWithFrame:myImageRect];
    tabNameBackGround.image = "Icon72@2x.png";
 
    [self.view addSubview:someImageView];
    
    
	//[[UIApplication sharedApplication] setStatusBarHidden:YES animated:NO];
		
	[window makeKeyAndVisible];
}

*/

// TO SET THE BACKGROUND IMAGE OF THE NAVIGATION BAR
/*@implementation UINavigationBar (CustomImage)
- (void)drawRect:(CGRect)rect
{
	UIImage *image = [UIImage imageNamed: @"Bar Uncommon header-1.png"];
	[image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}
*/

}

    
    @end



/*
- (UIImage *)resizeImage:(UIImage*)image newSize:(CGSize)newSize {
    CGRect newRect = CGRectIntegral(CGRectMake(0, 0, newSize.width, newSize.height));
    CGImageRef imageRef = image.CGImage;
    
    UIGraphicsBeginImageContextWithOptions(newSize, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Set the quality level to use when rescaling
    CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
    CGAffineTransform flipVertical = CGAffineTransformMake(1, 0, 0, -1, 0, newSize.height);
    
    CGContextConcatCTM(context, flipVertical);
    // Draw into the context; this scales the image
    CGContextDrawImage(context, newRect, imageRef);
    
    // Get the resized image from the context and a UIImage
    CGImageRef newImageRef = CGBitmapContextCreateImage(context);
    UIImage *newImage = [UIImage imageWithCGImage:newImageRef];
    
    CGImageRelease(newImageRef);
    UIGraphicsEndImageContext();
    
    return newImage;
}
*/
    



