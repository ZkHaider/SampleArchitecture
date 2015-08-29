//
//  SAClient.h
//  SAArchitectureApp
//
//  Created by Haider Khan on 8/28/15.
//  Copyright (c) 2015 ZkHaider. All rights reserved.
//

#import "OVCHTTPSessionManager.h"
#import "SAPhoto.h"
#import "SAPost.h"

@interface SAClient : OVCHTTPSessionManager

+ (SAClient *)getInstance;

@end
