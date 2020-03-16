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
    // make the point
    NSRect point;
    point.size = NSMakeSize( 2, 2);
    
    // calculate random origin point
    point.origin = SSRandomPointForSizeWithinRect( point.size, [self bounds] );
    
    // create bezier path with the point
    NSBezierPath* path = [NSBezierPath bezierPathWithRect:point];

    // calculate a random color
    float red = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    float green = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    float blue = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;
    float alpha = 255.0;
    //float alpha = SSRandomFloatBetween( 0.0, 255.0 ) / 255.0;

    // create and set the color
    NSColor* color = [NSColor colorWithCalibratedRed:red green:green blue:blue alpha:alpha];
    [color set];
    
    // draw point
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
