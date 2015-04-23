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

-(instancetype)initWithName:(NSString *)name latitude:(NSNumber *)latitude longitude:(NSNumber *)longitude

{
    
    if (self = [super init])
        
    {
        
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        
    }
    
    return self;
    
}



-(NSString *)shortenedNameToLength:(NSInteger)length

{
    
    if (length > 0) {
        
        self.name = [NSString stringWithFormat:@"%@", [self.name substringToIndex:length]];
        
    }
    
    return self.name;
    
}



-(BOOL)verifyLocation

{
    
    if ([self.name isEqualToString:@""])
        
    {
        
        return NO;
        
    }
    
    if (abs([self.latitude intValue]) > 90 || abs([self.longitude intValue]) > 180)  {
        
        return  NO;
        
    }
    
    return YES;
    
}

- (FISTrivia *)mostLikedTriviaItem:(NSArray *)locations
{
 NSMutableArray *triviaItems = [NSMutableArray new];
    
      for (FISLocation *location in locations)
      {
        
      for (FISTrivia *trivia in location.triviaItems)
      {
          
       [triviaItems addObject:@{@"object":trivia, @"likes":[NSNumber numberWithInteger: trivia.likes]}];
        
      }
          
    }
    
NSSortDescriptor *mostLikes = [[NSSortDescriptor alloc] initWithKey:@"likes" ascending:NO];
    
    
        NSArray *triviaSortedByLikes = [triviaItems sortedArrayUsingDescriptors:@[mostLikes]];
    
        return [triviaSortedByLikes objectAtIndex:0];
    
}
@end
