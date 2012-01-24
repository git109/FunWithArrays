//
//  MusicLibrary.h
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicLibrary : NSObject

@property (nonatomic, retain) NSMutableArray *songs;

- (NSArray *)searchWithSearchString:(NSString *)searchString;
- (NSArray *)songsWithRatingGreaterThanOrEqualTo:(int)rating;

@end
