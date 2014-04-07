//
//  DataViewController.m
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController
{
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
    
    // tanotest
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSUserDefaults *myDefaults = [NSUserDefaults standardUserDefaults];
    
    self.totalKaitensu.text = [NSString stringWithFormat:@"%d",[myDefaults integerForKey:@"TotalRoll"]];
    self.totalWin.text = [NSString stringWithFormat:@"%d",[myDefaults integerForKey:@"WinNumber"]];
    self.totalLose.text = [NSString stringWithFormat:@"%d",[myDefaults integerForKey:@"LoseNumber"]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tapreturnBtn:(UIButton *)sender
{

   
}
@end
