//
//  data.h
//  marubatu
//
//  Created by bizan.com.mac06 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface data : NSObject
@property int  preserve;
@property int totalRoll;
@property int winNumber;
@property int loseNumber;
-(void) preserveTotalRoll:(int)total;
-(void) preserveWinNumber:(int)win;
-(void) preserveLoseNumber:(int)lose;
-(int) getPresesrveTotalRoll;
-(int) getPresesrveWinNumber;
-(int) getPresesrveLoseNumber;



@end
