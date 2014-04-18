//
//  CardOverlayView.m
//  Picks
//
//  Created by Varun Rau on 4/17/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import "CardOverlayView.h"

@interface CardOverlayView ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation CardOverlayView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) return nil;
    
    self.backgroundColor = [UIColor whiteColor];
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"no"]];
    [self addSubview:self.imageView];
    
    return self;
}

- (void) setMode:(CardOverlayViewMode)mode {
    if(_mode == mode) return;
    _mode = mode;
    if (mode == CardOverlayViewModeLeft) {
        self.imageView.image = [UIImage imageNamed:@"no"];
    } else {
        self.imageView.image = [UIImage imageNamed:@"yes"];
    }
}

- (void) updateOverlay:(CGFloat) distance {
    if (distance > 0) {
        [self setMode:CardOverlayViewModeLeft];
    } else if (distance <= 0) {
        [self setMode:CardOverlayViewModeRight];
    }
    CGFloat overlayStrength = MIN(fabsf(distance)/100,.4);
    self.alpha = overlayStrength;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(50, 50, 100, 100);
}

@end
