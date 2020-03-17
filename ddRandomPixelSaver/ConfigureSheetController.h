//
//  ConfigureSheetController.h
//  ddRandomPixelSaver
//
//  Created by Andreas Meyer on 17.03.20.
//  Copyright (c) 2020 DeltaDesk. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ConfigureSheetController : NSWindowController {
    
    IBOutlet id fpsSlider;
}

- (IBAction) clickOk:(id)sender;

- (IBAction) clickCancel:(id)sender;

@end
