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
    int a;
    
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
        if(self.atarioto.playing){
            self.atarioto.currentTime = 0.0;
            
        }else{
            [self.atarioto play];
        }
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
       

        
        // 丸の時する事を書く
        atariNum++;
    } else {
        image1 = [UIImage imageNamed:@"batu.jpeg"];
        //バツの時する事を書く
        hazureNum++;
        
        [self 抽選メソッド];
        
    }
    self.maubatu.image = image1;
    

    [preserve preserveTotalRoll:soukaiten];
    

}

-(void)抽選メソッド {
   
    
        
    
}

- (IBAction)modoru:(UIButton *)sender {
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
