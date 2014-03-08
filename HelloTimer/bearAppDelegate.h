//
//  bearAppDelegate.h
//  HelloTimer
//
//  Created by Bear on 2014/3/7.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

#import <Cocoa/Cocoa.h>

// 在此 h 檔中我們不需要知道 MainWindowController 類別的實作
// 所以我們使用 @class 來前置宣告(foward declare) MainWindowController
@class MainWindowController;

@interface bearAppDelegate : NSObject <NSApplicationDelegate>

// 宣告管理 Window 的物件，產生 getter/setter方法
@property (nonatomic, strong) MainWindowController *mainWindowController;

@end

