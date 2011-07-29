//
//  tweetDeckAppDelegate.h
//  tweetDeck
//
//  Created by Aakash Chaudhary on 29/07/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class tweetDeckViewController;

@interface tweetDeckAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet tweetDeckViewController *viewController;

@end
