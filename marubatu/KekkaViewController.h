//
//  KekkaViewController.h
//  marubatu
//
//  Created by bizan.com.mac12 on 2014/04/04.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface KekkaViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *maubatu;
@property BOOL isMaru;
@property int presentMode;
@property AVAudioPlayer *atarioto;

- (IBAction)modoru:(UIButton *)sender;
- (IBAction)botan:(UIButton *)sender;
@end
