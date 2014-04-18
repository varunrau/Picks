//
//  CardView.h
//  Picks
//
//  Created by Varun Rau on 4/16/14.
//  Copyright (c) 2014 Rafael and Rau. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CardView;

typedef enum {
    Left,
    Right
} Direction;

@protocol CardViewInteration <NSObject>

- (void)cardViewSwiped:(CardView *)cardView inDirection:(Direction)direction;

@end

@interface CardView : UIView

@property (nonatomic, strong) id<CardViewInteration> parentView;

@end

