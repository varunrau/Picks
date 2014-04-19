//
//  AppDelegate.h
//  Picks
//
//  Created by Varun Rau on 4/16/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "CardViewController.h"
#import "MenuViewController.h"
#import "LoginViewController.h"
#import "PictureViewController.h"
#import "UploadViewController.h"
#import "TopPictureViewController.h"
#import "User.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, FBLoginViewDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) User *user;

@property (nonatomic, strong) MenuViewController *menuVC;
@property (nonatomic, strong) CardViewController *cardVC;
@property (nonatomic, strong) LoginViewController *loginVC;
@property (nonatomic, strong) PictureViewController *pictureVC;
@property (nonatomic, strong) TopPictureViewController *topPictureVC;
@property (nonatomic, strong) UploadViewController *uploadVC;

- (void) sessionStateChanged:(FBSession *)session state:(FBSessionState)state error:(NSError *)error;

- (void) userLoggedOut;

@end
