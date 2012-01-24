//
//  Artist.m
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Artist.h"

@implementation Artist

@synthesize name = _name;

- (id)initWithName:(NSString *)name
{
    self = [super init];
    
    [self setName:name];
    
    return self;
}

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    
    [self setValuesForKeysWithDictionary:dictionary];
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", [self name]];
}


@end
