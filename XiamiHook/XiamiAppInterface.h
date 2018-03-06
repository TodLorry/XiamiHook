//
//  XiamiAppInterface.h
//  XiamiAppDylib
//
//  Created by albus on 2018/3/2.
//  Copyright © 2018年 albus. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark 去广告相关

@interface XBusinessLaunchService : NSObject <UIApplicationDelegate>

- (_Bool)checkIfShowSplash;

@end

#pragma mark 最近播放歌曲相关

@interface MTLModel : NSObject <NSCoding, NSCopying>
@end

@interface BaseViewModel : MTLModel
@end

@interface BaseListViewModel : BaseViewModel
@end

@interface XLogicListModel : BaseListViewModel
@end

@interface XSongListModel : XLogicListModel
@end

@interface XRecentPlayListModel : XSongListModel

- (_Bool)isContainExpireCachedSong;

@end


#ifndef XiamiAppInterface_h
#define XiamiAppInterface_h


#endif /* XiamiAppInterface_h */
