//
//  ddRandomPixelSaverView.m
//  ddRandomPixelSaver
//
//  Created by Andreas Meyer on 15.03.20.
//  Copyright (c) 2020 __MyCompanyName__. All rights reserved.
//

#import "ddRandomPixelSaverView.h"

@implementation ddRandomPixelSaverView

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
