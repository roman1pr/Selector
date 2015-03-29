//
//  AppDelegate.m
//  Selector
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    
    SEL selector1 = @selector(testMethod);
    SEL selector2 = @selector(testMethod:);
    SEL selector3 = @selector(testMethod:paramenter2:);
    
    [self performSelector:selector1];
    [self performSelector:selector2 withObject:@"test String" afterDelay:5.f];
    [self performSelector:selector3 withObject:@"test String" withObject:@"second test"];
    
    NSString * str = [self testMethodParam1:1 param2:2 param3:3];
    NSLog(@"%@", str);
   /*
    NSMethodSignature * methodSignature = [AppDelegate instanceMethodForSelector:sel];
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
    
    */
    
    return YES;
}

- (void) testMethod{
    NSLog(@"TestMethod");
}

- (void) testMethod: (NSString*) string{
    NSLog(@"%@ - test", string);
}

- (void) testMethod: (NSString*) string paramenter2:(NSString*) param{
    NSLog(@"%@ - test, %@", string, param);
}

-(NSString*) testMethodParam1 :(NSInteger) intValue param2 : (CGFloat) floatParam param3: (double) doubleValue{
    return [NSString stringWithFormat:@"%ld %f %f", (long)intValue, floatParam, doubleValue];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
