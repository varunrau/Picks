//
//  VoteView.m
//  Picks
//
//  Created by Varun Rau on 4/16/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import "VoteView.h"
#import "CardView.h"

@interface VoteView ()

@property (nonatomic, strong) CardView *topCardView;
@property (nonatomic, strong) CardView *bottomCardView;

@end

@implementation VoteView

- (id)init {
    self = [super init];
    if (!self) return nil;
    
    self.backgroundColor = [UIColor whiteColor];
    
    [self initCardViews];
    [self setupView];
    
    return self;
}

- (void) setupView {
}

- (void) initCardViews {
    
    self.topCardView = [self addCardView];
    
    self.bottomCardView = [self addCardView];
    
    [self addSubview:self.bottomCardView];
    [self addSubview:self.topCardView];
}

- (void) cardViewSwiped:(CardView *)cardView inDirection:(Direction)direction {
    [cardView removeFromSuperview];
    
    self.topCardView = self.bottomCardView;
    self.bottomCardView = [self addCardView];
    [self addSubview:self.bottomCardView];
}

- (CardView *) addCardView {
    CardView *cv = [[CardView alloc] initWithFrame:CGRectMake(60,100,200,260)];
    cv.parentView = self;
    return cv;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
