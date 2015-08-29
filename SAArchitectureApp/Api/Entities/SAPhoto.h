//
//  SAPhoto.h
//  SAArchitectureApp
//
//  Created by Haider Khan on 8/28/15.
//  Copyright (c) 2015 ZkHaider. All rights reserved.
//

#import <Mantle.h>

@interface SAPhoto : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) NSNumber *albumId;
@property (nonatomic, readonly) NSNumber *photoId;
@property (nonatomic) NSString *photoTitle;
@property (nonatomic) NSURL *photoURL;
@property (nonatomic) NSURL *thumbURL;

@end
