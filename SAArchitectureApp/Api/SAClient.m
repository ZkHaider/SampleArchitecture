//
//  SAClient.m
//  SAArchitectureApp
//
//  Created by Haider Khan on 8/28/15.
//  Copyright (c) 2015 ZkHaider. All rights reserved.
//

#import "SAClient.h"

static NSString *const API_URL = @"http://jsonplaceholder.typicode.com";

@implementation SAClient

#pragma Initialization

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:[NSURL URLWithString:API_URL]];
    if (!self)
        return nil;
    
    self.requestSerializer = [AFJSONRequestSerializer serializer];
    return self;
}

# pragma Singleton

+ (SAClient *)getInstance {
    static SAClient *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] initWithBaseURL:[NSURL URLWithString:API_URL]];
    });
    return _sharedInstance;
}

# pragma modelClassesByResourcePath

+ (NSDictionary *)modelClassesByResourcePath {
    return @{
             @"/posts/*": [SAPost class],
             @"/photos/*": [SAPhoto class]
             };
}

@end
