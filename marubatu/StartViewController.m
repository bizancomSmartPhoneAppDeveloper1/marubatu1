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
#import "data.h"
#import "Modo.h"


@interface StartViewController ()
{
    
    data *dataHelper;
    Modo *rollHelper;
    
    
}
@end

@implementation StartViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    dataHelper = [[data alloc]init];
    rollHelper = [[Modo alloc]init];
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
    
    self.presentMode = [dataHelper getPreserveMode];
    
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
        
        newVC.isMaru = [rollHelper isWinRoll:self.presentMode];
        newVC.presentMode = self.presentMode;
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
