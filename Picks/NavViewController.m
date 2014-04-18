//
//  NavViewController.m
//  Picks
//
//  Created by Varun Rau on 4/18/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import "NavViewController.h"
#import "MenuViewController.h"
#import "UIViewController+REFrostedViewController.h"
#import "REFrostedViewController.h"

@interface NavViewController ()

@property (strong, nonatomic) MenuViewController *menuViewController;

@end

@implementation NavViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureRecognized:)]];
}

- (void)showMenu
{
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController presentMenuViewController];
}

#pragma mark -
#pragma mark Gesture recognizer

- (void)panGestureRecognized:(UIPanGestureRecognizer *)sender
{
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    [self.frostedViewController panGestureRecognized:sender];
}
@end
