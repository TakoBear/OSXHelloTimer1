//
//  bearAppDelegate.m
//  HelloTimer
//
//  Created by Bear on 2014/3/7.
//  Copyright (c) 2014年 TakoBear. All rights reserved.
//

// 在此 .m 中，我們就需要知道 MainWindowController 有哪些方法可以使用
// 所以使用 #import 來載入 MainWindowController.h 的內容
#import "bearAppDelegate.h"
#import "MainWindowController.h"

@implementation bearAppDelegate

/*
 * 當程式啟動完成後會呼叫的方法
 */
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // 顯示 MainWindowController.xib
    [self.mainWindowController showWindow:self];
}

/*
 * 當點擊關閉視窗後呼叫是否終止程式的方法
 * 在這裡回傳 YES，當程式執行時按下左上方的叉叉關閉時
 * 程式就會終止，Dock上也不會保留圖示
 */
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}

/*
 * 覆寫 mainWindowController 的 getter 方法
 * 在第一次被呼叫時建立 MainWindowController 類別的物件
 */
- (MainWindowController *)mainWindowController
{
    if (_mainWindowController == nil) {
        _mainWindowController = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
    }
    return _mainWindowController;
}

@end
