//
//  NSDate+CGBAdditions.m
//  CGBFoundation
//
//  Created by Laurent Gaches on 4/21/11.
//  Copyright 2011 MLPL Studio. All rights reserved.
//

#import "NSDate+CGBAdditions.h"


@implementation NSDate (CGBAdditions)

+ (NSDate *)dateFromISO8601String:(NSString *)string {
	if (!string) {
		return nil;
	}
    
	struct tm tm;
	strptime([string cStringUsingEncoding:NSUTF8StringEncoding], "%Y-%m-%dT%H:%M:%S%z", &tm);
    //	tm.tm_isdst = -1;
	time_t t = mktime(&tm);
    
	return [NSDate dateWithTimeIntervalSince1970:t + [[NSTimeZone localTimeZone] secondsFromGMT]];
}


- (NSString *)ISO8601String {
	struct tm *timeinfo;
	char buffer[80];
    
	time_t rawtime = (time_t)[self timeIntervalSince1970];
	timeinfo = gmtime(&rawtime);
    
	strftime(buffer, 80, "%Y-%m-%dT%H:%M:%SZ", timeinfo);
    
	return [NSString stringWithCString:buffer encoding:NSUTF8StringEncoding];
}


@end
