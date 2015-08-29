//
//  SAPost.h
//  SAArchitectureApp
//
//  Created by Haider Khan on 8/28/15.
//  Copyright (c) 2015 ZkHaider. All rights reserved.
//

#import <Mantle.h>

@interface SAPost : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) NSNumber *userId;
@property (nonatomic, readonly) NSNumber *postId;
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *body;

@end

