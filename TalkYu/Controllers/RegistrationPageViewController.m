//
//  RegistrationPageViewController.m
//  TalkYu
//
//  Created by Anshumali Karna on 24/02/23.
//

#import "RegistrationPageViewController.h"


@interface RegistrationWindowController : NSWindowController

@end

@implementation RegistrationWindowController

- (void)windowDidLoad {
    NSRect frame = [self.window frame];
    // add the new height
    frame.size = CGSizeMake(300, 800);
    
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


@interface RegistrationPageViewController ()
@property (strong, nonatomic) NSTextField *usernameField;
@property (strong, nonatomic) NSSecureTextField *passwordField;
@property (strong, nonatomic) NSButton *loginButton;
@property (strong, nonatomic) NSButton *registrationButton;
@end

@implementation RegistrationPageViewController

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
    self.passwordField = [[NSSecureTextField alloc] initWithFrame:NSMakeRect(150, 140, 200, 25)];
    self.passwordField.placeholderString = @"Confirm Password";
    self.passwordField.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.view addSubview:self.passwordField];
    self.registrationButton = [[NSButton alloc] initWithFrame:NSMakeRect(150, 120, 200, 25)];
    [self.registrationButton setTitle:@"Registration"];
    [self.registrationButton setBezelStyle:NSBezelStyleTexturedRounded];
    self.registrationButton.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.registrationButton setTarget:self];
    [self.registrationButton setAction:@selector(registrationAction:)];
    [self.view addSubview:self.registrationButton];
    // Create the login button
    self.loginButton = [[NSButton alloc] initWithFrame:NSMakeRect(150, 80, 200, 25)];
    [self.loginButton setTitle:@" Back to Login"];
    [self.loginButton setBezelStyle:NSBezelStyleInline];
    self.loginButton.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin;
    [self.loginButton setTarget:self];
    [self.loginButton setAction:@selector(loginButtonClicked:)];
    [self.view addSubview:self.loginButton];
    
    
    // Do view setup here.
}
- (IBAction)loginButtonClicked:(id)sender{
    
}

- (IBAction)registrationAction:(id)sender{
    
}


@end
