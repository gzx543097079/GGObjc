//
//  NSDate+GGAdd.h
//  FBSnapshotTestCase
//
//  Created by 惊小鱼 on 2019/10/15.
//
#import <Foundation/Foundation.h>


@interface NSDate (GGAdd)


/// 获取当前时间戳
+ (NSTimeInterval)getNowTimeInterval;

/// 获取当前时间 默认格式yyy-MM-dd
+ (NSString *)getNowTime;

/// 获取当前时间
/// @param format 时间格式 默认为yyyy-MM-dd
+ (NSString *)gg_getNowTimeWithFormat:(NSString *)format;

/// 获取时间
/// @param interval 时间戳
/// @param format 时间格式 默认为yyyy-MM-dd
/// @param locale 当前系统语言
/// @param timeZone 当前系统时区
+ (NSString *)gg_getTimeFormatWithInterval:(NSTimeInterval)interval
                                    format:(NSString *)format
                                    locale:(NSLocale *)locale
                                  timeZone:(NSTimeZone *)timeZone;

@end

