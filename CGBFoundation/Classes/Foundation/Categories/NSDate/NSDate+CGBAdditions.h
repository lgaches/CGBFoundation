//
//  NSDate+CGBAdditions.h
//  CGBFoundation
//
//  Created by Laurent Gaches on 4/21/11.
//  Copyright 2011 MLPL Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (CGBAdditions)

+ (NSDate *)dateFromISO8601String:(NSString *)string;
- (NSString *)ISO8601String;

@end
