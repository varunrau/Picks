//
//  AppDelegate.h
//  Picks
//
//  Created by Varun Rau on 4/16/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "User.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, FBLoginViewDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) User *user;

- (void) sessionStateChanged:(FBSession *)session state:(FBSessionState)state error:(NSError *)error;

- (void) userLoggedOut;

@end
