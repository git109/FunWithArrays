//
//  Artist.h
//  FunWithArrays
//
//  Created by Jack Lawrence on 1/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Artist : NSObject

@property (nonatomic, retain) NSString *name;

- (id)initWithName:(NSString *)name;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end
