//
//  KekkaViewController.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "KekkaViewController.h"
#import "StartViewController.h"
#import "Modo.h"
#import "data.h"
@interface KekkaViewController ()
{
    UIImage *image1;
    data *preserve;
    Modo *rollHelper;

}


@end

@implementation KekkaViewController
{
    int hazureNum;
    int soukaiten;
    int modoatai;
    int atariNum;
    
    
    }

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Check2 ------ResultView");
    preserve = [[data alloc]init];
    rollHelper = [[Modo alloc] init];
    soukaiten = [preserve getPresesrveTotalRoll];
    soukaiten++;
    
        
    if(self.isMaru){
        image1 = [UIImage imageNamed:@"maru.jpeg"];
        //BGM
//        NSString *path = [[NSBundle mainBundle]pathForResource:@"" ofType:@""];
//        NSURL *url = [NSURL fileURLWithPath:path];
//        self.atarioto = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:NULL];
//        [self.atarioto play];
        
        
        //データー保存
        atariNum = [preserve getPresesrveWinNumber];
        atariNum++;
        [preserve preserveWinNumber:atariNum];
        
    } else {
        image1 = [UIImage imageNamed:@"batu.jpeg"];
        hazureNum = [preserve getPresesrveLoseNumber];
        hazureNum++;
        [preserve preserveLoseNumber:hazureNum];
        
        
    }
    self.maubatu.image = image1;
    

    [preserve preserveTotalRoll:soukaiten];
    self.presentMode = [rollHelper selectMode:self.presentMode];
    [preserve preserveMode:self.presentMode];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
