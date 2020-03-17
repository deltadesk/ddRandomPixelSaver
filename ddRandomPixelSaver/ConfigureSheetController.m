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
    
    int newFPSValue = [fpsSlider intValue];
    NSLog(@"ddRandomPixelSaverView: Got OK click. Slider value=%d", newFPSValue);
    
    [[NSApplication sharedApplication] endSheet:self.window];
}

- (IBAction) clickCancel:(id)sender {
    [[NSApplication sharedApplication] endSheet:self.window];
}

@end
