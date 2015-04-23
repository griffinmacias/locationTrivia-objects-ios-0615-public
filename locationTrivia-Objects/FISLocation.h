//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Mason Macias on 4/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FISTrivia;

@interface FISLocation : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *longitude;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSMutableArray *triviaItems;

- (instancetype)initWithName:(NSString *)name latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude;
- (NSString *)shortenedNameToLength:(NSInteger)length;
-(BOOL)verifyLocation;
- (FISTrivia *)mostLikedTriviaItem;
@end
