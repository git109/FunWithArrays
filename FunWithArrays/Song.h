//
//  Song.h
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Artist.h"

@interface Song : NSObject

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *genre;
@property (nonatomic, retain) NSString *rating;
@property (nonatomic, retain) Artist *artist;

- (id)initWithName:(NSString *)name genre:(NSString *)genre rating:(NSString *)rating artist:(Artist *)artist;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
