//
//  AnimalObj.h
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import <Foundation/Foundation.h>

@interface AnimalObj : NSObject

@property int animalId;
@property int numbers;
@property (nonatomic, retain) NSString *image;
@property  int posX;
@property int posY;
@property int division;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSString *imageLight;
@property BOOL isSuccess;
@property (nonatomic, retain) NSString *sound;

@end
