//
//  KekkaViewController.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "KekkaViewController.h"
#import "Modo.h"
@interface KekkaViewController ()
{
    UIImage *image1;
    Modo *tyusen;
    
}


@end

@implementation KekkaViewController
{
    int hazureNum;
    int soukaiten;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    soukaiten++;
        
    if(self.isMaru){
        image1 = [UIImage imageNamed:@"maru.jpeg"];
        
        // 丸の時する事を書く
        
    } else {
        image1 = [UIImage imageNamed:@"batu.jpeg"];
        //バツの時する事を書く
        hazureNum++;
        
        [self 抽選メソッド];
        
    }
    self.maubatu.image = image1;
    tyusen = [[Modo alloc]init];
    
    
}
-(void)抽選メソッド {
    if (hazureNum > 100){
        
        
        
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
