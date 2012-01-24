//
//  MusicLibrary.m
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MusicLibrary.h"

#import "Song.h"

@implementation MusicLibrary

@synthesize songs = _songs;

- (NSMutableArray *)songs
{
    if (_songs == nil) // so we don't have to read the file every time
    {
        NSArray *songDicts = [NSArray arrayWithContentsOfFile:@"Songs.plist"];
        
        _songs = [[NSMutableArray alloc] initWithCapacity:[songDicts count]];
        
        
        // Fast enumeration //
        for (NSDictionary *currDict in songDicts)
        {
            Song *song = [[[Song alloc] initWithDictionary:currDict] autorelease];
            [_songs addObject:song];
		}
    }
    return _songs;
}

- (NSArray *)searchWithSearchString:(NSString *)searchString
{
    NSMutableArray *searchResults = [NSMutableArray array];
    
    if ([searchString length] !=0) 
    {
        [searchResults addObjectsFromArray:[self.songs filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"name CONTAINS[cd] %@ OR artist.name CONTAINS[cd] %@", searchString, searchString]]];
    }

    return [[searchResults copy] autorelease]; // calling copy creates an immutable array.
}

- (NSArray *)songsWithRatingGreaterThanOrEqualTo:(int)rating
{
    NSMutableArray *songsArray = [NSMutableArray array];
    for (Song *song in self.songs)
    {
        if ([song.rating intValue] >= rating)
        {
            [songsArray addObject:song];
        }
    }
    return [[songsArray copy] autorelease];
}

@end
