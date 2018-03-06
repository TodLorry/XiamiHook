//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  XiamiHook.m
//  XiamiHook
//
//  Created by albus on 2018/3/6.
//  Copyright (c) 2018年 albus. All rights reserved.
//

#import "XiamiHook.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import "XiamiAppInterface.h"

//去广告
CHDeclareClass(XBusinessLaunchService)

CHOptimizedMethod0(self, _Bool, XBusinessLaunchService, checkIfShowSplash)
{
    return NO;
}

CHConstructor
{
    CHLoadLateClass(XBusinessLaunchService);
    CHHook0(XBusinessLaunchService, checkIfShowSplash);
}

//去除最近播放歌曲因为时间过期而被从本地删除的功能
CHDeclareClass(XRecentPlayListModel)

CHOptimizedMethod0(self, _Bool, XRecentPlayListModel, isContainExpireCachedSong)
{
    return NO;
}

CHConstructor
{
    CHLoadLateClass(XRecentPlayListModel);
    CHHook0(XRecentPlayListModel, isContainExpireCachedSong);
}

CHDeclareClass(CustomViewController)

CHOptimizedMethod(0, self, NSString*, CustomViewController,getMyName){
    return @"MonkeyDevPod";
}

CHConstructor{
    CHLoadLateClass(CustomViewController);
    CHClassHook(0, CustomViewController, getMyName);
}
