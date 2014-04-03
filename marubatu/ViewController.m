//
//  ViewController.m
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "ViewController.h"
#import "KekkaViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    int num,score;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    score = 0;
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%d",score];
    
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
}

- (IBAction)tapStopBtn:(UIButton *)sender
{
    NSLog(@"111111111");
}

-(IBAction)returnMain:(UIStoryboardPopoverSegue *)segue
{

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"kekka"])//もしセグエの名前がkekkaだったら
    {
        NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];//ユーザーデフォルト取得
        
        [myDefaults setInteger:score forKey:@"myScore"];
        
        [myDefaults synchronize];
        
        
        
//        KekkaViewController *kekkaView = [segue destinationViewController];
        
    }
}
@end
