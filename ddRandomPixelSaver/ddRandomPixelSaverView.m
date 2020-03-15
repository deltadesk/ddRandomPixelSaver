//
//  ddRandomPixelSaverView.m
//  ddRandomPixelSaver
//
//  Created by Andreas Meyer on 15.03.20.
//  Copyright (c) 2020 DeltaDesk. All rights reserved.
//

#import "ddRandomPixelSaverView.h"

@implementation ddRandomPixelSaverView

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/60.0];
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
    NSBezierPath *path;
    NSRect rect;
    NSSize size;
    NSColor *color;
    float red, green, blue, alpha;
    
    size = [self bounds].size;
    
    // Make the point
    rect.size = NSMakeSize( 2, 2);
    
    // Calculate random origin point
    rect.origin = SSRandomPointForSizeWithinRect( rect.size, [self bounds] );
    path = [NSBezierPath bezierPathWithRect:rect];
    
    // Calculate a random color
    red = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    green = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    blue = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    alpha = 255.0; //SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    
    color = [NSColor colorWithCalibratedRed:red green:green blue:blue alpha:alpha];
    
    [color set];
    [path fill];
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
