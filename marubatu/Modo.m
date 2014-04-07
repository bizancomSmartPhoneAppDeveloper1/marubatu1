//
//  Modo.m
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import "Modo.h"

@implementation Modo

 - (void)jigoku{
    int i;
    /* arc4random()を使う場合 */
    for ( i = 0; i <= 4; i++ ) {
        // 1から100までの乱数を発生させる */
        self.atai = arc4random() % 30 + 1;}
     return;
        
    }
 - (void)gense{
        
        int i;
        /* arc4random()を使う場合 */
        for ( i = 0; i <= 4; i++ ) {
            // 1から100までの乱数を発生させる */
            self.atai = arc4random() % 20 + 1;}
     return;
    }
     - (void)tengoku{
         int i;
         /* arc4random()を使う場合 */
         for ( i = 0; i <= 4; i++ ) {
             // 1から100までの乱数を発生させる */
             self.atai = arc4random() % 2 + 1;
             return;
         }
}

@end
