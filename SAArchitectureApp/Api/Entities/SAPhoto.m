//
//  SAPhoto.m
//  SAArchitectureApp
//
//  Created by Haider Khan on 8/28/15.
//  Copyright (c) 2015 ZkHaider. All rights reserved.
//

#import "SAPhoto.h"

@implementation SAPhoto

# pragma MTLJSONSerialization

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"albumId": @"albumId",
             @"photoId": @"id",
             @"photoTitle": @"title",
             @"photoURL": @"url",
             @"thumbURL": @"thumbnailUrl"
             };
}

# pragma photoURLSchemeTransformer

- (NSValueTransformer *)photoURLSchemeTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

# pragma thumbURLSchemeTransformer

- (NSValueTransformer *)thumbURLSchemeTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end
