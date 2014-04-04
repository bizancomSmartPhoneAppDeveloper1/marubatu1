//
//  ViewController.m
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "StartViewController.h"
#import "DataViewController.h"

@interface StartViewController ()
@end

@implementation StartViewController
{
    int num,score;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapBtn:(UIButton *)sender
{
    score++;
    self.scoreLabel.text = [NSString stringWithFormat:@"%d",score];
    
    num = arc4random() % 24 + 1;
    
    if (num == 1)
    {
        self.image.image = [UIImage imageNamed:@"maru.jpeg"];
    }
    else if (num != 1)
    {
        self.image.image = [UIImage imageNamed:@"batu.jpeg"];
    }
    
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];//ユーザーデフォルト取得
    
    [myDefaults setInteger:score forKey:@"myScore"];
    
    [myDefaults synchronize];

    
    
}

- (IBAction)tapStopBtn:(UIButton *)sender
{
    NSLog(@"111111111");
}

-(IBAction)returnMain:(UIStoryboardPopoverSegue *)segue
{

@end
