//
//  SAPost.m
//  SAArchitectureApp
//
//  Created by Haider Khan on 8/28/15.
//  Copyright (c) 2015 ZkHaider. All rights reserved.
//

#import "SAPost.h"

@implementation SAPost

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"userId": @"userId",
             @"id": @"id",
             @"title": @"title",
             @"body": @"body"
             };
}

@end
