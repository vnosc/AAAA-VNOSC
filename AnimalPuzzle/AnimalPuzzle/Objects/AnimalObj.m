//
//  AnimalObj.m
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import "AnimalObj.h"

@implementation AnimalObj

@synthesize animalId, division, image, imageLight, isSuccess, name, numbers, posX, posY, sound;

- (void) dealloc{
    [image release];
    [name release];
    [imageLight release];
    [sound release];
    [super dealloc];
}

@end
