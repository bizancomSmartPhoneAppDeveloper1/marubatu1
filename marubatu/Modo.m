//
//  Modo.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "Modo.h"

@implementation Modo

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


@end
