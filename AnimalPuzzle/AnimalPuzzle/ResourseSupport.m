//
//  ResourseSupport.m
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import "ResourseSupport.h"
#import "Common.h"

@implementation ResourseSupport

+ (NSMutableArray *)getListFile: (LEVEL)level{
    NSMutableArray *array = nil;
    switch (level) {
        case EASY:
            array = [[NSMutableArray alloc] init];
            for (int i = 1;i <= 20; i++) {
                [array addObject:[NSString stringWithFormat:@"item%d", i]];
            }
            break;
            
        default:
            break;
    }
    return [array autorelease];
}

@end
