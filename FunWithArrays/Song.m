//
//  Song.m
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize name = _name;
@synthesize genre = _genre;
@synthesize rating = _rating;
@synthesize artist = _artist;

- (id)initWithName:(NSString *)name genre:(NSString *)genre rating:(NSString *)rating artist:(Artist *)artist
{
    self = [super init];
    
    [self setName:name];
    [self setGenre:genre];
    [self setRating:rating];
    [self setArtist:artist];
    
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    [self setValuesForKeysWithDictionary:dictionary];
    
    return self;
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"artist"]) {
        Artist *artist = [[Artist alloc] initWithDictionary:value];
        value = artist;
        [artist autorelease];
    }
    [super setValue:value forKey:key];
}

- (NSString *)description

{
    return [NSString stringWithFormat:@"%@ (%@) %@ stars by %@", [self name], [self genre], [self rating], [self artist]];
}

@end
