//
//  AppDelegate.m
//  TalkYu
//
//  Created by Anshumali Karna on 24/02/23.
//

#import "AppDelegate.h"

@interface AppDelegate ()


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSAppearance *darkAquaAppearance = [NSAppearance appearanceNamed:NSAppearanceNameDarkAqua];
    [NSApplication sharedApplication].appearance = darkAquaAppearance;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
