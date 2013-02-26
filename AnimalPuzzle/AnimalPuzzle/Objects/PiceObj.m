//
//  PiceObj.m
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import "PiceObj.h"

@implementation PiceObj

@synthesize image, currentX, currentY, fromX, fromY, isChoosed, piceId, toX, toY;

- (void) dealloc{
    [image release];
    [super  dealloc];
}

@end
