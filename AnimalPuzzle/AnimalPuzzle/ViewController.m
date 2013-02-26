//
//  ViewController.m
//  AnimalPuzzle
//
//  Created by VNOSC1 on 2/25/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AnimalPuzzle.h"
#import "ResourseSupport.h"
#import "Common.h"
#import "UserSession.h"
#import "AnimalObj.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [self readAnimalInfo:EASY];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)level1
{
    AnimalPuzzle *animalPuzzle = [[AnimalPuzzle alloc] init];
    [self presentModalViewController:animalPuzzle animated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

#pragma User defination
- (void) readAnimalInfo: (LEVEL) level{
    NSMutableArray *arrayXmlFiles = [ResourseSupport getListFile:EASY];
    for (int i=0;i<[arrayXmlFiles count]; i++) {
        NSString *xmlPath = [[NSBundle mainBundle] pathForResource:[arrayXmlFiles objectAtIndex:i] ofType:@"xml"];
        NSData *xmlData = [NSData dataWithContentsOfFile:xmlPath];
        parser = [[NSXMLParser alloc] initWithData:xmlData];
        parser.delegate = self;
        [parser parse];
    }
    //    NSLog(arrayXmlFiles);
}

#pragma XML Parser delegate
- (void) parser:(NSXMLParser *)parser didStartElement:(NSString *)elementname namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    if( [elementname isEqualToString:@"item"])
    {   inItem = TRUE;
        animalObj = [[AnimalObj alloc] init];
        imageName = [NSMutableString stringWithString:@""];
    }
    if ([elementname isEqualToString:@"fromX"]) {
        inFromX = TRUE;
        return;
    }
    if ([elementname isEqualToString:@"fromY"]) {
        inFromY = TRUE;
        return;
    }
    if ([elementname isEqualToString:@"toX"]) {
        inToX = TRUE;
        return;
    }
    if ([elementname isEqualToString:@"toY"]) {
        inToY = TRUE;
        return;
    }
    if ([elementname isEqualToString:@"image"]) {
        inImage = TRUE;
        return;
    }
}

- (void) parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (inItem) {
        if (inImage) {
            NSLog(@"%@", string);
        }
    }
}

- (void) parser:(NSXMLParser *)parser didEndElement:(NSString *)elementname namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementname isEqualToString:@"image"]) {
        inImage = FALSE;
    }
    if ([elementname isEqualToString:@"item"]) {
        
        inItem = FALSE;
    }
}

@end
