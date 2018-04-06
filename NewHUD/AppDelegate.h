//
//  AppDelegate.h
//  NewHUD
//
//  Created by Sebastian Strus on 2018-04-03.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIView *hudView;
@property (strong, nonatomic) UILabel *hudLabel;
@property (strong, nonatomic) UIView *circleView;
@property (strong, nonatomic) CABasicAnimation *animation;
    
- (void)showHUDwithText:(NSString *)text;
- (void)dismissHUD;

@end

