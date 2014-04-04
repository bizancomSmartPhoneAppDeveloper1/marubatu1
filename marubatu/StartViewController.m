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
    int num;
    NSArray *image;
}
@end

@implementation StartViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    num = arc4random() % 24 + 1;
}

-(void)viewWillAppear:(BOOL)animated
{//２つ目の画面を表示する時、データを表示する
    NSLog(@"１つ目の画像からのデータ<%d>",mode);
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
        
        if (num == 1) {
            newVC.isMaru = YES;
        } else {
            newVC.isMaru = NO;
        }

        
    }
  
    
}

- (IBAction)tapStopBtn:(UIButton *)sender
{
    NSLog(@"111111111");
}

-(IBAction)returnMain:(UIStoryboardPopoverSegue *)segue
{
}
@end
