//
//  StartViewController.h
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StartViewController : UIViewController
{
    int mode;
}

@property (nonatomic,assign) int mode;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end
