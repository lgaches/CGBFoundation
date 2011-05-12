//
//  NSString+CGBAdditions.h
//  CGBFoundation
//
//  Created by Laurent Gaches on 4/13/11.
//  Copyright 2011 MLPL Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (NSString_CGBAdditions)

/**
 * Checks if a String is not empty ("") and not nil.
 * 
 * true is NSString is nil or ""
 * false is NSString is " ","bob" or " bob "
 *
 */
- (BOOL)isEmpty;


/**
 * Checks if a String is not empty ("") and not nil.
 * false is NSString is nil or ""
 * true is NSString is " ","bob" or " bob " 
 *
 */
- (BOOL)isNotEmpty;

/**
 * Checks if a String is whitespace, empty ("") or nil.
 * 
 * true is NSString is nil,"" or " "
 * false is NSString is "bob" or " bob "
 *
 */
- (BOOL)isBlank;

/**
 * Checks if a String is not empty (""), not nil and not whitespace only.
 *
 * false is NSString is nil,"" or " "
 * true is NSString is "bob" or " bob "
 *
 */
- (BOOL)isNotBlank;

- (NSString *)stringByReplacingString:(NSString *)searchString withString:(NSString *)newString;



@end
