//
//  UserSession.h
//  AnimalPuzzle
//
//  Created by NamNguyen on 2/26/13.
//
//

#import <Foundation/Foundation.h>

@interface UserSession : NSObject

@property (nonatomic, retain) NSMutableArray *arrayEasy;// contain AnimalObj
@property (nonatomic, retain) NSMutableArray *arrayMedium;// contain AnimalObj
@property (nonatomic, retain) NSMutableArray *arrayHard;// contain AnimalObj

+ (UserSession *) getUserSession;

@end
