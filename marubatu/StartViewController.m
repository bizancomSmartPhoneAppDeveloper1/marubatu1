//
//  ViewController.m
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "StartViewController.h"
#import "DataViewController.h"
#import "KekkaViewController.h"


@interface StartViewController ()
{
    int num,count;
    int random_number;
}
@end

@implementation StartViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    count = 0;
    [self.OP stop];
    
    NSString *path1 = [[NSBundle mainBundle]pathForResource:@"button42"ofType:@"mp3"];
    NSURL *url1 = [NSURL fileURLWithPath:path1];
    self.TapOn = [[AVAudioPlayer alloc]initWithContentsOfURL:url1 error:NULL];
    
    NSString *path2 = [[NSBundle mainBundle]pathForResource:@"yumekatari"ofType:@"mp3"];
    NSURL *url2 = [NSURL fileURLWithPath:path2];
    self.OP = [[AVAudioPlayer alloc]initWithContentsOfURL:url2 error:NULL];
    self.OP.numberOfLoops = -1;
    [self.OP play];
    
    NSString *path3 = [[NSBundle mainBundle]pathForResource:@"tw058"ofType:@"mp3"];
    NSURL *url3 = [NSURL fileURLWithPath:path3];
    self.koukaku = [[AVAudioPlayer alloc]initWithContentsOfURL:url3 error:NULL];
    self.koukaku.numberOfLoops = -1;
    
    random_number = arc4random() % 3 + 1;//0～4の数値をランダムに取得
    
    NSLog(@"%d", random_number);
    
    switch (random_number)
    {
        case 1:
            num = arc4random() % 2 + 1;
            [self.OP stop];
            [self.koukaku play];
            break;
        case 2:
            num = arc4random() % 99 + 1;
            [self.koukaku stop];
            break;
        case 3:
            num = arc4random() % 49 + 1;
            [self.koukaku stop];
            break;
        default:
            num = arc4random() % 10 + 1;
            [self.koukaku stop];
            break;
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//もしセグエの名前がkekkasegueだったら
    if ([[segue identifier]isEqualToString:@"kekkasegue"])
    {

        KekkaViewController *newVC = [segue destinationViewController];
        
        if (num == 1)
        {
            newVC.isMaru = YES;
        }
        else
        {
            newVC.isMaru = NO;
        }
    }
}

-(BOOL)shouldAutorotate//i phone横に倒しても回転しないように
{
    return NO;
}


- (IBAction)TapButton:(UIButton *)sender
{
    [self.TapOn play];
    [self.OP stop];
    [self.koukaku stop];

}

- (IBAction)DataBtn:(UIButton *)sender
{
    [self.TapOn play];
 }

@end
