//
//  ConfigureSheetController.m
//  ddRandomPixelSaver
//
//  Created by Andreas Meyer on 17.03.20.
//  Copyright (c) 2020 DeltaDesk. All rights reserved.
//

#import "ConfigureSheetController.h"

@implementation ConfigureSheetController

- (IBAction) clickOk:(id)sender {
    NSLog(@"Got OK click");
    [[NSApplication sharedApplication] endSheet:self.window];
}

- (IBAction) clickCancel:(id)sender {
    NSLog(@"Got Cancel click");
    [[NSApplication sharedApplication] endSheet:self.window];
}

@end
