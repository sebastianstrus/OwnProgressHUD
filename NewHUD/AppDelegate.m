//
//  AppDelegate.m
//  NewHUD
//
//  Created by Sebastian Strus on 2018-04-03.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [application setStatusBarHidden:YES];
    [self prepareOwnHUD];
    [self showHUDwithText:@"Reachability check..."];
    //[self performSelector:@selector(dismissHUD) withObject:nil afterDelay:7.0 ];
    
//    [self showHUDwithText: @"Progress..."];
//    [self performSelector:@selector(dismissHUD) withObject:nil afterDelay:4.0 ];
//    [self performSelector:@selector(showHUDwithText:) withObject:nil afterDelay:6.0 ];
//    [self performSelector:@selector(dismissHUD) withObject:nil afterDelay:10.0 ];
//    [self performSelector:@selector(showHUDwithText:) withObject:@"Progress..." afterDelay:14.0 ];
//    [self performSelector:@selector(dismissHUD) withObject:nil afterDelay:18.0 ];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    [_circleView.layer addAnimation:_animation forKey:@"spinAnimation"];
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

// prepare own HUD
- (void)prepareOwnHUD {
    _hudView = [[UIView alloc] init];
    _hudView.frame = self.window.frame;
    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular];//UIBlurEffectStyleDark
    UIVisualEffectView *visualEffectView = [[UIVisualEffectView alloc]initWithEffect:blurEffect];
    visualEffectView.frame = _hudView.frame;//bounds;
    [_hudView addSubview:visualEffectView];
    _hudLabel = [[UILabel alloc] initWithFrame: CGRectMake(0, self.window.frame.size.height/2-100, self.window.frame.size.width, 80)];
    _hudLabel.text = nil;
    _hudLabel.textAlignment = NSTextAlignmentCenter;
    _hudLabel.font = [UIFont fontWithName: @"American Typewriter" size:24];
    _hudLabel.numberOfLines = 1;
    _hudLabel.adjustsFontSizeToFitWidth = YES;
    _hudLabel.minimumScaleFactor = 10.0f/12.0f;
    _hudLabel.clipsToBounds = YES;
    _hudLabel.backgroundColor = [UIColor clearColor];
    _hudLabel.textColor = [UIColor darkGrayColor];
    [_hudView addSubview:_hudLabel];
    _circleView = [[UIView alloc] init];
    _circleView.layer.borderWidth = 0.5f;
    [_circleView.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    _circleView.layer.cornerRadius = 50;
    [_circleView.layer setShadowOpacity:0.8];
    [_circleView.layer setShadowRadius:10.0];
    [_circleView.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    _circleView.frame = CGRectMake(self.window.frame.size.width/2 - 50, self.window.frame.size.height/2, 100, 100);
    [_hudView addSubview:_circleView];
    
    UIView *pointView = [[UIView alloc] init];
    pointView.frame = CGRectMake(45, -4, 10, 10);
    pointView.layer.cornerRadius = 5;
    pointView.backgroundColor = [UIColor darkGrayColor];
    [pointView.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    [pointView.layer setShadowColor:[UIColor darkGrayColor].CGColor];
    [pointView.layer setShadowOpacity:1.0];
    [pointView.layer setShadowRadius:3.0];
    UIBezierPath* path = [[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(-23, 9)];
    [path addLineToPoint:CGPointMake(6, 0)];
    [path addLineToPoint:CGPointMake(6, 10)];
    [path addLineToPoint:CGPointMake(-23, 9)];
    [path closePath];
    pointView.layer.shadowPath = path.CGPath;
    [pointView.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
    [_circleView addSubview:pointView];
    //sin(60) = 0.866, cos(60) = 0.5
    
    UIView *pointView2 = [[UIView alloc] init];
    pointView2.frame = CGRectMake(87, 70, 10, 10);
    pointView2.layer.cornerRadius = 5;
    pointView2.backgroundColor = [UIColor darkGrayColor];
    [pointView2.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    [pointView2.layer setShadowColor:[UIColor darkGrayColor].CGColor];
    [pointView2.layer setShadowOpacity:1.0];
    [pointView2.layer setShadowRadius:3.0];
    UIBezierPath* path2 = [[UIBezierPath alloc]init];
    [path2 moveToPoint:CGPointMake(15, -25)];//
    [path2 addLineToPoint:CGPointMake(9, 9)];
    [path2 addLineToPoint:CGPointMake(1, 7)];
    [path2 addLineToPoint:CGPointMake(15, -25)];
    [path2 closePath];
    pointView2.layer.shadowPath = path2.CGPath;
    [pointView2.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
    [_circleView addSubview:pointView2];
    
    UIView *pointView3 = [[UIView alloc] init];
    pointView3.frame = CGRectMake(2, 70, 10, 10);
    pointView3.layer.cornerRadius = 5;
    pointView3.backgroundColor = [UIColor darkGrayColor];
    [pointView3.layer setBorderColor:[UIColor darkGrayColor].CGColor];
    [pointView3.layer setShadowColor:[UIColor darkGrayColor].CGColor];
    [pointView3.layer setShadowOpacity:1.0];
    [pointView3.layer setShadowRadius:3.0];
    UIBezierPath* path3 = [[UIBezierPath alloc]init];
    [path3 moveToPoint:CGPointMake(29, 29)];
    [path3 addLineToPoint:CGPointMake(1, 9)];
    [path3 addLineToPoint:CGPointMake(9, 5)];
    [path3 addLineToPoint:CGPointMake(29, 29)];
    [path3 closePath];
    pointView3.layer.shadowPath = path3.CGPath;
    [pointView3.layer setShadowOffset:CGSizeMake(0.0, 0.0)];
    [_circleView addSubview:pointView3];

    _animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    _animation.fromValue = [NSNumber numberWithFloat:0.0f];
    _animation.toValue = [NSNumber numberWithFloat: 2*M_PI];
    _animation.duration = 1.1f;
    _animation.repeatCount = INFINITY;
    [_circleView.layer addAnimation:_animation forKey:@"spinAnimation"];
    _hudView.alpha = 0.0;
    [self.window.rootViewController.view addSubview:_hudView];
}


- (void)showHUDwithText:(NSString *)text {
    NSLog(@"showHUDwithText");
    _hudLabel.text = text;
    //[self.window.rootViewController.view addSubview:_hudView];
    _hudView.alpha = 1.0;
}
    
- (void)dismissHUD {
    NSLog(@"dismissHUD");
    _hudView.alpha = 0.0;
    //[_hudView removeFromSuperview];
}
@end



