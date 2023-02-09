//
//  AppDelegate.m
//  NSCollectionViewArray_test
//
//  Created by Gregory Casamento on 2/7/23.
//

#import "AppDelegate.h"
#import "MyItem.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSBundle *b = [NSBundle mainBundle];
    NSNib *itemNib = [[NSNib alloc] initWithNibNamed: @"MyItem" bundle: b];

    [self.collectionView registerNib: itemNib
               forItemWithIdentifier: @"MyItem"];
    self.collectionView.itemPrototype = [[MyItem alloc] init];
    self.arrayController.content = @[@"Test1", @"Test2", @"Test3", @"Test4"];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


@end
