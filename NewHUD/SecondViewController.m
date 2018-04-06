//
//  SecondViewController.m
//  NewHUD
//
//  Created by Sebastian Strus on 2018-04-04.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showHUD:(UIButton *)sender {
    NSLog(@"sjowHUD pressed");
    
    [appDelegate showHUDwithText:@"Reachability check..."];
    [appDelegate performSelector:@selector(dismissHUD) withObject:nil afterDelay:7.0 ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
