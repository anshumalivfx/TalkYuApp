//
//  ViewController.m
//  TalkYu
//
//  Created by Anshumali Karna on 24/02/23.
//

#import "LoginViewController.h"
#include <CoreImage/CoreImage.h>

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
