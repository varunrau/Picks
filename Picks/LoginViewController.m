//
//  LoginViewController.m
//  
//
//  Created by Varun Rau on 4/17/14.
//
//

#import "LoginViewController.h"
#import "CardViewController.h"
#import "AppDelegate.h"
#import <FacebookSDK/FacebookSDK.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupView];
    
    
}

- (void) setupView {
    
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:loginButton];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton setContentEdgeInsets:UIEdgeInsetsMake(2, 6, 2, 6)];
    [loginButton sizeToFit];
    loginButton.center = CGPointMake(200, 50);
    
    [loginButton addTarget:self action:@selector(loginButtonTouched:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    CardViewController *cardVC = [[CardViewController alloc] init];
    [self.navigationController pushViewController:cardVC animated:YES];
}

- (IBAction)loginButtonTouched:(id)sender {
    if (FBSession.activeSession.state != FBSessionStateOpen && FBSession.activeSession.state != FBSessionStateOpenTokenExtended) {
        [FBSession openActiveSessionWithReadPermissions:@[@"basic_info"] allowLoginUI:YES completionHandler:^(FBSession *session, FBSessionState status, NSError *error) {
            AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [delegate sessionStateChanged:session state:status error:error];
        }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
