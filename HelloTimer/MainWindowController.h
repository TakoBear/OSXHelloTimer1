//
//  MainWindowController.h
//  HelloTimer
//
//  Created by Bear on 2014/3/7.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainWindowController : NSWindowController

// 宣告特性，用來連結視窗上的 NSTextField 類別物件
@property (weak) IBOutlet NSTextField *timerTextField;

@end
