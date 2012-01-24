//
//  main.m
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Song.h"
#import "MusicLibrary.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {

        // Part 1: Custom init methods, overriding description, adding to arrays //
        Artist *meese = [[Artist alloc] initWithName:@"Meese"];
        Artist *neonIndian = [[Artist alloc] initWithName:@"Neon Indian"];
        
        Song *songA1 = [[Song alloc] initWithName:@"Polish Girl" genre:@"Electronic" rating:@"4" artist:neonIndian];
        Song *songA2 = [[Song alloc] initWithName:@"Arcade Blues" genre:@"Electronic" rating:@"3" artist:neonIndian];
        Song *songA3 = [[Song alloc] initWithName:@"Fallout" genre:@"Electronic" rating:@"5" artist:neonIndian];
        
        Song *songB1 = [[Song alloc] initWithName:@"Forward Motion" genre:@"Rock" rating:@"4" artist:meese];
        Song *songB2 = [[Song alloc] initWithName:@"Broadcast" genre:@"Rock" rating:@"5" artist:meese];
        
        NSArray *array = [NSArray arrayWithObjects:songA1, songA2, songA3, songB1, songB2, nil];
        
        NSLog(@"%@", array);
        
        // Part 2: Reading from a plist //
        NSString *fileName = @"Songs.plist";
        // Convenience Method //
        NSArray *fileArray = [NSArray arrayWithContentsOfFile:fileName];
        NSLog(@"%@", fileArray);
        
        // Part 3: Programatically read from plist and generate object graph
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSLog(@"%@",[musicLibrary songs]);
        
        // Part 4: Searching //
        NSLog(@"\nSearch Results:\n%@", [musicLibrary searchWithSearchString:@"Mee"]);
        
        NSLog(@"\nRating Results:\n%@", [musicLibrary songsWithRatingGreaterThanOrEqualTo:4]);
        
        // Part 5: Sorting //
        
    }
    return 0;
}

