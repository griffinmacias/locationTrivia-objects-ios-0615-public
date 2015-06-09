//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Mason Macias on 4/23/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"
#import "FISTrivia.h"

@implementation FISLocation


- (BOOL)verifyLocation

{
    
    BOOL logicalLongitudeCoordinates = self.longitude.floatValue >= -180 && self.longitude.floatValue <= 180;
    BOOL logicalLatitudeCoordinates = self.latitude.floatValue >= -90 && self.latitude.floatValue <= 90;
    
    
    if (logicalLongitudeCoordinates && logicalLatitudeCoordinates) {
        if (![self.name isEqual:@""]) {
            return YES;
        }
    }
    
    return NO;
    
}


- (NSString *)shortenedNameToLength:(NSInteger)count
{
    if ([self.name length] > count) {
      return [self.name substringToIndex:count];
    }
    
    return self.name;
    
}


- (instancetype)initWithLocation:(NSString *)name Longitude:(NSNumber *)longitude Latitude:(NSNumber *)latitude
{
    self = [super init];
    
    if (self) {
        _name = name;
        _longitude = longitude;
        _latitude = latitude;
        _triviaItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (instancetype)init
{
    return [self initWithLocation:@"" Longitude:@0 Latitude:@0];
}

- (FISTrivia *)mostLikes
{

    return [self.triviaItems valueForKeyPath:@"@max.intValue"];
    
    
}

@end
