//
//  NSDate+GGAdd.m
//  FBSnapshotTestCase
//
//  Created by 惊小鱼 on 2019/10/15.
//

#import "NSDate+GGAdd.h"


#define GGDefaultFormat @"yyyy-MM-dd"

@implementation NSDate (GGAdd)

+ (NSTimeInterval)getNowTimeInterval {
    return [[NSDate date] timeIntervalSince1970];
}

+ (NSString *)getNowTime {
    return [self gg_getTimeFormatWithInterval:[self getNowTimeInterval] format:nil locale:nil timeZone:nil];
}

+ (NSString *)gg_getNowTimeWithFormat:(NSString *)format{
      return [self gg_getTimeFormatWithInterval:[self getNowTimeInterval] format:format locale:nil timeZone:nil];
}

+ (NSString *)gg_getTimeFormatWithInterval:(NSTimeInterval)interval
                                    format:(NSString *)format
                                    locale:(NSLocale *)locale
                                  timeZone:(NSTimeZone *)timeZone{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    // 设置时间戳格式
    df.dateFormat = format.length == 0 ? GGDefaultFormat : format;
    df.locale = locale ? locale : [NSLocale currentLocale];
    df.timeZone = timeZone ? timeZone : [NSTimeZone systemTimeZone];
    return [df stringFromDate:date];
}

@end

