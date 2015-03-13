//
//  PDTCalendarSelectionView.m
//  PDTSimpleCalendarDemo
//
//  Created by Daniel Langh on 13/03/2015.
//  Copyright (c) 2015 Producteev. All rights reserved.
//

#import "PDTCalendarSelectionView.h"

@interface PDTCalendarSelectionView ()

@property (nonatomic, strong) NSArray *frames;

@end

@implementation PDTCalendarSelectionView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)setSelectionFrames:(NSArray *)selectionFrames
{
    self.frames = selectionFrames;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    UIImage *image = [[UIImage imageNamed:@"CalendarSelection"] stretchableImageWithLeftCapWidth:16 topCapHeight:16];
    for(NSValue *value in _frames)
    {
        CGRect r = [value CGRectValue];
        CGFloat inset = MAX(6, (r.size.height-32)/2.0f);
        r = CGRectInset(r, inset, inset);
        [image drawInRect:r];
    }
}

@end
