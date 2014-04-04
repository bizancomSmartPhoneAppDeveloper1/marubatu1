//
//  KekkaViewController.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "KekkaViewController.h"

@interface KekkaViewController ()
{
    UIImageView *image;
}
@end

@implementation KekkaViewController
{
    int i,n;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    if(self.morau == 0){
       image = [UIImage imageNamed:@""];
        self.image = image;
        
    }else if(self.morau == 1){
        
    }
    /* arc4random()を使う場合 */
    for ( i = 0; i <= 4; i++ ) {
        // 1から100までの乱数を発生させる */
        n = arc4random() % 100 + 1;
        NSLog(@"%2d回目 = %2d", i + 1, n);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
