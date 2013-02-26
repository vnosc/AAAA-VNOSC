//
//  UserSession.m
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import "UserSession.h"

static UserSession *userSession = nil;

@implementation UserSession
@synthesize arrayEasy,arrayHard,arrayMedium;

+ (UserSession *) getUserSession{
    if (userSession == nil) {
        userSession = [[UserSession alloc] init];
    }
    return userSession;
}

- (void) dealloc{
    [arrayEasy release];
    [arrayHard release];
    [arrayMedium release];
    [super dealloc];
}

@end
