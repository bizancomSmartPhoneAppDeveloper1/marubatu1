//
//  KekkaViewController.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "KekkaViewController.h"
#import "Modo.h"
#import "data.h"
@interface KekkaViewController ()
{
    UIImage *image1;
    data *preserve;


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
    preserve = [[data alloc]init];
    soukaiten = [preserve getPresesrveTotalRoll];
    soukaiten++;
    
        
    if(self.isMaru){
        image1 = [UIImage imageNamed:@"maru.jpeg"];
        //BGM
        NSString *path = [[NSBundle mainBundle]pathForResource:@"" ofType:@""];
        NSURL *url = [NSURL fileURLWithPath:path];
        self.atarioto = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:NULL];
        [self.atarioto play];
        
        
        //データー保存
        atariNum = [preserve getPresesrveWinNumber];
        atariNum++;
        
    } else {
        image1 = [UIImage imageNamed:@"batu.jpeg"];
        atariNum = [preserve getPresesrveLoseNumber];
        hazureNum++;
        
        
        
    }
    self.maubatu.image = image1;
    

    [preserve preserveTotalRoll:soukaiten];
    [preserve preserveWinNumber:atariNum];
    [preserve preserveLoseNumber:hazureNum];
    

}


- (IBAction)modoru:(UIButton *)sender {
}

- (IBAction)botan:(UIButton *)sender {
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
