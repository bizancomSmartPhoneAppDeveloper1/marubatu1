//
//  StartViewController.h
//  marubatu
//
//  Created by bizan.com.mac04 on 2014/04/02.
//  Copyright (c) 2014年 bizan.com.mac04. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>
#import "Modo.h"

@interface StartViewController : UIViewController
@property int presentMode;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property AVAudioPlayer *TapOn;
@property AVAudioPlayer *OP;
@property AVAudioPlayer *koukaku;
- (IBAction)swicthGameMode:(UISegmentedControl *)sender;

- (IBAction)TapButton:(UIButton *)sender;
- (IBAction)DataBtn:(UIButton *)sender;

@end
