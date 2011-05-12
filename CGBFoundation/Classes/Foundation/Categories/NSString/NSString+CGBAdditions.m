//
//  NSString+CGBAdditions.m
//  CGBFoundation
//
//  Created by Laurent Gaches on 4/13/11.
//  Copyright 2011 MLPL Studio. All rights reserved.
//

#import "NSString+CGBAdditions.h"


@implementation NSString (NSString_CGBAdditions)

- (BOOL)isEmpty {
	BOOL retvalue = NO;
	if (self == nil || [self length] == 0) {
		retvalue = YES;
	} 
	
	return retvalue ;
}

- (BOOL)isNotEmpty {
	return ![self isEmpty];
}

- (BOOL)isBlank {
	BOOL retvalue = NO;
	if (self == nil || [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""]) {
		retvalue = YES;
	} 
	return retvalue;
}

- (BOOL)isNotBlank {
	return ![self isBlank];
}

- (NSString *)stringByReplacingString:(NSString *)searchString withString:(NSString *)newString {
    NSMutableString *mutable = [NSMutableString stringWithString:self];
    [mutable replaceOccurrencesOfString:searchString withString:newString options:NSCaseInsensitiveSearch range:NSMakeRange(0, [self length])];
    return [NSString stringWithString:mutable];
}

@end
