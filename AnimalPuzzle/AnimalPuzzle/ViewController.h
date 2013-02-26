//
//  ViewController.h
//  AnimalPuzzle
//
//  Created by VNOSC1 on 2/25/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimalObj.h"
#import "Common.h"

@interface ViewController : UIViewController<NSXMLParserDelegate>{
    NSXMLParser *parser;
    BOOL inItems;
    BOOL inItem;
    BOOL inFromX;
    BOOL inFromY;
    BOOL inToX;
    BOOL inToY;
    BOOL inImage;
    AnimalObj *animalObj;
    NSString *imageName;
}

- (IBAction)level1;
- (void) readAnimalInfo: (LEVEL) level;

@end
