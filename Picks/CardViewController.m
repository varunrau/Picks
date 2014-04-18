//
//  CardViewController.m
//  Picks
//
//  Created by Varun Rau on 4/16/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import "CardViewController.h"
#import "UIViewController+SlidingMenuViewController.h"
#import "REFrostedViewController.h"

#import "VoteView.h"

@interface CardViewController ()

@property (nonatomic, strong) UIPanGestureRecognizer *panGestureRecognizer;

@end

@implementation CardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    VoteView *view = [[VoteView alloc] init];
    self.view = view;
    
    self.title = @"Picks";
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIFont fontWithName:@"HelveticaNeue" size:18], NSFontAttributeName,
      //[UIColor blueColor], NSForegroundColorAttributeName, TITLE COLOR CHANGE LATER
      [UIColor whiteColor], NSBackgroundColorAttributeName, nil]];
    
	UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu-button"] style:UIBarButtonItemStylePlain target:self action:@selector(showMenu)];
    
    self.navigationItem.leftBarButtonItem = leftBarButton;

    
    self.panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragged:)];
    [self.view addGestureRecognizer:self.panGestureRecognizer];
}

- (void) showMenu {
    [self.frostedViewController presentMenuViewController];
}

- (void) dragged:(UIPanGestureRecognizer *) gestureRecognizer {
    [self.frostedViewController panGestureRecognized:gestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
