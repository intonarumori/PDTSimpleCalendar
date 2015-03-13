//
//  PDTCalendarSelectionView.h
//  PDTSimpleCalendarDemo
//
//  Created by Daniel Langh on 13/03/2015.
//  Copyright (c) 2015 Producteev. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PDTSimpleCalendarViewController.h"

@interface PDTCalendarSelectionView : UIView <PDTSimpleCalendarViewSelection>

- (void)setSelectionFrames:(NSArray *)selectionFrames;

@end
