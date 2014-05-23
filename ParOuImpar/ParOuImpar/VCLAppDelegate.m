//
//  VCLAppDelegate.m
//  ParOuImpar
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLAppDelegate.h"
#import "VCLViewController.h"
#import "VCLJogo.h"

@implementation VCLAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    CGRect screenRect = self.window.bounds;
//    CGRect bigRect = screenRect;
//    bigRect.size.width *= 2;
//    
//    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:screenRect];
//    scroll.pagingEnabled=YES;
//    scroll.contentSize = bigRect.size;
//    [self.window addSubview:scroll];
//    
    VCLViewController *controller = [[VCLViewController alloc] init];
    [self.window setRootViewController:controller];
//
//    [scroll addSubview:controller.view];
//        
//    VCLJogo *telaJogo = [[VCLJogo alloc] init];
//    
//    UIView *jogo = [[UIView alloc] initWithFrame:CGRectMake(self.window.bounds.size.width, 0, self.window.bounds.size.width, self.window.bounds.size.height)];
//    
//    jogo.backgroundColor = [UIColor blackColor];
//    
//    [jogo addSubview:telaJogo.view];
//    
//    [scroll addSubview:jogo];
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
