//
//  Modo.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "Modo.h"

@implementation Modo

-(BOOL)isWinRoll:(int)presentMode {
    BOOL isWin = NO;
    
    switch (presentMode) {
        case 0:
            isWin = [self gense];
            break;
            
        case 1:
            isWin = [self tengoku];
            break;
            
        case 2:
            isWin = [self jigoku];
            break;
    }
    
    return isWin;
}

 - (BOOL)jigoku
{
    int i;

        // 1から100までの乱数を発生させる */
    i = arc4random() % 30 + 1;

    if (i == 1) {
        // あたり
        return YES;
        
    } else {
        // はずれ
        return NO;
    }
        
}
 - (BOOL)gense
{
    int i;
    
    // 1から100までの乱数を発生させる */
    i = arc4random() % 20 + 1;
    if (i == 1) {
        // あたり
        return YES;
    
    } else {
        // はずれ
        return NO;
    }

}

- (BOOL)tengoku
{
    int i;
    // 1から100までの乱数を発生させる */
    i = arc4random() % 2 + 1;
    
    if (i == 1) {
        // あたり
        return YES;
        
    } else {
        // はずれ
        return NO;
    }

}

// モード変更をするかどうかの抽選
- (int)selectMode: (int) presentMode {
    int i;
    switch (presentMode) {
        case 0:
            // 通常モード時
            
            i = arc4random() % 100 + 1;
            
            if (i == 1) {
                presentMode = [self moveMode:presentMode];
            }
            break;
            
        case 1:
            // 天国モード時
            i = arc4random() % 10 + 1;
            
            if (i == 1) {
                presentMode = [self moveMode:presentMode];
            }
            
            break;
            
        case 2:
            // 地獄モード時
            i = arc4random() % 20 + 1;
            
            if (i == 1) {
                presentMode = [self moveMode:presentMode];
            }
            break;
    }
    
    
    
    
    return presentMode;
}

-(int)moveMode:(int)prezentMode {
    int i;
    switch (prezentMode) {
        case 0:
            // 通常モード時
            i = arc4random() % 10 + 1;
            
            if (i > 7) {
                prezentMode = 1;
            } else if (i > 2) {
                prezentMode = 2;
            }
            
            break;
            
       case 1:
            // 天国モード時
            i = arc4random() % 10 + 1;
            
            if (i > 9) {
                prezentMode = 2;
            } else if (i > 2) {
                prezentMode = 0;
            }
            
            break;
        case 2:
            // 地獄モード時
            i = arc4random() % 10 + 1;
            
            if (i == 1) {
                prezentMode = 1;
            } else if (i > 2) {
                prezentMode = 0;
            }
            break;
    }
    
    return prezentMode;
}


@end
