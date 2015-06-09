//
//  FISTrivia.m
//  locationTrivia-Objects
//
//  Created by Mason Macias on 4/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTrivia.h"

@implementation FISTrivia
- (instancetype)initWithContent:(NSString *)content Likes:(NSInteger)likes
{
    self = [super init];
    
    if (self) {
        _content = content;
        _likes = likes;
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithContent:@"" Likes:0];
}
@end
