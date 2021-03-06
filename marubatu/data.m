//
//  data.m
//  marubatu
//
//  Created by bizan.com.mac06 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "data.h"

@implementation data
- (void)preserveTotalRoll:(int)total{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:total forKey:@"TotalRoll"];
    
}

-(void)preserveWinNumber:(int)win{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:win forKey:@"WinNumber"];
    
}

-(void)preserveLoseNumber:(int)lose{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:lose forKey:@"LoseNumber"];
    
}
- (void)preserveMode:(int)presentMode {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:presentMode forKey:@"Mode"];
    
}

-(int)getPresesrveTotalRoll {
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.totalRoll = [ud integerForKey:@"TotalRoll"];
    
    return self.totalRoll;
}
-(int)getPresesrveWinNumber {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.winNumber = [ud integerForKey:@"WinNumber"];
    
    return self.winNumber;
}

-(int)getPresesrveLoseNumber {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.loseNumber = [ud integerForKey:@"LoseNumber"];
    
    return self.loseNumber;
}

-(int)getPreserveMode {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.mode = [ud integerForKey:@"Mode"];
    
    return self.mode;
}

@end
