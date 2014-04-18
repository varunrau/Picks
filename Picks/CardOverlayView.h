//
//  CardOverlayView.h
//  Picks
//
//  Created by Varun Rau on 4/17/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    CardOverlayViewModeLeft,
    CardOverlayViewModeRight
} CardOverlayViewMode;

@interface CardOverlayView : UIView

@property (nonatomic) CardOverlayViewMode mode;

- (void)updateOverlay:(CGFloat) distance;

@end
