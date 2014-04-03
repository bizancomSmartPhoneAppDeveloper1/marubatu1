//
//  KekkaViewController.m
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "KekkaViewController.h"

@interface KekkaViewController ()

@end

@implementation KekkaViewController
{
    int kaiten,totalkaiten;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    totalkaiten = 0;
    
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    
    kaiten = [myDefaults integerForKey:@"myScore"];
    
    if (kaiten != 0)
    {
        totalkaiten += kaiten;
        
        self.kaitensu.text = [NSString stringWithFormat:@"%d",kaiten];
        
        self.totalkaitensu.text = [NSString stringWithFormat:@"%d",totalkaiten];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tapreturnBtn:(UIButton *)sender
{
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];//ユーザーデフォルト取得
    
    [myDefaults setInteger:totalkaiten forKey:@"totalScore"];
    
    [myDefaults synchronize];
}
@end
