//
//  AnimalPuzzle.h
//  AnimalPuzzle
//
//  Created by VNOSC on 2/26/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimalPuzzle : UIViewController
{
    IBOutlet UIImageView *cloud;
    IBOutlet UIImageView *image;
    UIView *mainView;
    UIImageView * _bird;
    NSMutableArray *_attachments;
    NSInteger *_tatolSize;
    CGRect birdBinFrame;
}
@property (nonatomic, retain) UIView *mainView;
@property (nonatomic, retain) NSMutableArray *attachments;

@property (nonatomic, retain) UIImageView *bird;
@property (nonatomic) CGRect birdBinFrame;
@end
