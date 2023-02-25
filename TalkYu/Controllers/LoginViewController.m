//
//  ViewController.m
//  TalkYu
//
//  Created by Anshumali Karna on 24/02/23.
//

#import "LoginViewController.h"
#include <CoreImage/CoreImage.h>
#include <QuartzCore/QuartzCore.h>
#include "RegistrationPageViewController.h"
@import FirebaseAuth;

@interface LoginWindowController : NSWindowController

@end

@implementation LoginWindowController

- (void)windowDidLoad{
    NSRect frame = [self.window frame];
    // add the new height
    frame.size = CGSizeMake(300, 400);
    
    [self.window setFrame:frame display:YES animate:YES];
    NSVisualEffectView *visualEffectView = [[NSVisualEffectView alloc] initWithFrame:NSMakeRect(0, 0, self.window.frame.size.width, self.window.frame.size.height)];
    [visualEffectView setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
    [visualEffectView setMaterial:NSVisualEffectMaterialFullScreenUI];
    [visualEffectView setBlendingMode:NSVisualEffectBlendingModeBehindWindow];
    [self.window.contentView addSubview:visualEffectView positioned:NSWindowBelow relativeTo:nil];
    [self.window setTitleVisibility:NSWindowTitleHidden];
    [self.window setBackingType:NSBackingStoreBuffered];
    [self.window setTitlebarAppearsTransparent:YES];
    [super windowDidLoad];
}

@end


@interface LoginViewController ()

@property (strong, nonatomic) NSTextField *usernameField;
@property (strong, nonatomic) NSSecureTextField *passwordField;
@property (strong, nonatomic) NSButton *loginButton;
@property (strong, nonatomic) NSButton *registrationButton;

@end



@implementation LoginViewController

- (void)viewDidLoad {
    
    
    
    [super viewDidLoad];
    
    
    self.usernameField = [[NSTextField alloc] initWithFrame:NSMakeRect(150, 200, 200, 25)];
    self.usernameField.placeholderString = @"Username";
    self.usernameField.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.view addSubview:self.usernameField];
    [self setTitle:@""];
    // Create the password field
    self.passwordField = [[NSSecureTextField alloc] initWithFrame:NSMakeRect(150, 160, 200, 25)];
    self.passwordField.placeholderString = @"Password";
    self.passwordField.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.view addSubview:self.passwordField];
    
    // Create the login button
    self.loginButton = [[NSButton alloc] initWithFrame:NSMakeRect(150, 120, 200, 25)];
    [self.loginButton setTitle:@"Login"];
    [self.loginButton setBezelStyle:NSBezelStyleTexturedRounded];
    self.loginButton.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.loginButton setTarget:self];
    [self.loginButton setAction:@selector(loginButtonClicked:)];
    [self.view addSubview:self.loginButton];
    
    self.registrationButton = [[NSButton alloc] initWithFrame:NSMakeRect(150, 80, 200, 25)];
    [self.registrationButton setTitle:@"Registration"];
    [self.registrationButton setBezelStyle:NSBezelStyleInline];
    self.registrationButton.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.registrationButton setTarget:self];
    [self.registrationButton setAction:@selector(registrationAction:)];
    [self.view addSubview:self.registrationButton];
    
}

- (IBAction)registrationAction:(id)sender {
//    NSViewController *controller = [[self.storyboard init] instantiateInitialControllerWithCreator:];
//    self.view.window.contentViewController = controller;
//    NSRect currentFrame = self.view.window.frame;
//    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main" bundle:nil];
//
//        // Instantiate the RegistrationView using the storyboard ID
//        RegistrationPageViewController *registrationView = [storyboard instantiateControllerWithIdentifier:@"RegistrationView"];
//
//        // Get a reference to the current contentViewController
//        NSViewController *contentViewController = [self.view.window contentViewController];
//
//        // Replace the current contentViewController with the RegistrationView
//        [self.view.window setContentView:[registrationView view]];
//
//
//    [self.view.window setFrame:NSMakeRect(300, 100, 300, 600) display:YES animate:YES];
//        // Optional: Animate the transition
//        [[contentViewController view] replaceSubview:[self.view.window contentView] with:[registrationView view]];
//    RegistrationPageViewController *win = [[RegistrationPageViewController alloc] init];
//
//    // Calculate the new window frame
//    NSRect newFrame = NSMakeRect(currentFrame.origin.x, currentFrame.origin.y, 300, 800);
//
//    // Set the transition style
//    [CATransaction begin];
//    CATransition *transition = [CATransition animation];
//    transition.type = kCATransitionPush;
//    transition.subtype = kCATransitionFromRight;
//    [self.view.window.contentView.layer addAnimation:transition forKey:kCATransition];
//
//    // Set the new window frame with animation
//
//
//    // Set the new content view controller after the animation completes
//    [CATransaction setCompletionBlock:^{
//        [self.view.window setFrame:newFrame display:YES animate:YES];
//        NSViewController *controller = [[self storyboard] instantiateControllerWithIdentifier:@"RegistrationView"];
//        self.view.window.contentViewController = controller;
//    }];
//    [CATransaction commit];
    
    
    
    [self performSegueWithIdentifier:@"registrationseg" sender:self];
}

- (IBAction)loginButtonClicked:(id)sender {
    NSString *username = self.usernameField.stringValue;
    NSString *password = self.passwordField.stringValue;
    // TODO: Validate the user's input and perform the login action
    
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}


@end
