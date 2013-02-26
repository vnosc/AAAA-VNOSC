//
//  PiceObj.h
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import <Foundation/Foundation.h>

@interface PiceObj : NSObject

@property int piceId;
@property int fromX;
@property int fromY;
@property int toX;
@property int toY;
@property int currentX;
@property int currentY;
@property (nonatomic, retain) UIImage *image;
@property BOOL isChoosed;

@end
