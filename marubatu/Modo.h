//
//  Modo.h
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Modo : NSObject
@property int atai;
@property int random_number;

 - (BOOL)jigoku;
 - (BOOL)gense;
 - (BOOL)tengoku;

- (int) selectMode:(int)presentMode;

@end
