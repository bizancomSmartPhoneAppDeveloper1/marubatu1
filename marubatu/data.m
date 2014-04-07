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

-(int)getPresesrveTotalRoll {
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    self.totalRoll = [ud integerForKey:@"TotalRoll"];
    
    return self.totalRoll;
}
-(int)getPresesrveWinNumber {
    
    return self.winNumber;
}

-(int)getPresesrveLoseNumber {
    
    return self.loseNumber;
}
@end
