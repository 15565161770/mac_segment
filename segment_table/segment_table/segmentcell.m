//
//  segmentcell.m
//  segment_table
//
//  Created by 仝兴伟 on 2017/11/14.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "segmentcell.h"
@interface segmentcell ()

@end
@implementation segmentcell

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
//    NSTrackingArea *area =[[NSTrackingArea alloc] initWithRect:dirtyRect options:NSTrackingMouseEnteredAndExited|NSTrackingActiveInKeyWindow owner:self userInfo:nil];
//    [self addTrackingArea:area];
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        [self addLayout];
    }
    return self;
}

- (void)addLayout{
    self.imageView_s = [[NSImageView alloc]initWithFrame:CGRectMake(18, 14, 18, 18)];
    [self addSubview:self.imageView_s];
    
    self.titleLable = [[NSTextField alloc]initWithFrame:CGRectMake(48, 14, 60, 18)];
    [self.titleLable setTextColor:[NSColor colorWithRed:207/255.0 green:212/255.0 blue:217/255.0 alpha:1.0]];
    self.titleLable.font = [NSFont systemFontOfSize:12.0];
    self.titleLable.backgroundColor = [NSColor clearColor];
    [self.titleLable setBordered:NO];
    [self.titleLable setEditable:NO];
    [self addSubview:self.titleLable];
}



/*
- (void)mouseEntered:(NSEvent *)event {
    self.layer.backgroundColor = [NSColor colorWithRed:243 / 255.0 green:243 / 255.0 blue:243 / 255.0 alpha:1.0].CGColor;;
}

- (void)mouseExited:(NSEvent *)event {
    self.layer.backgroundColor = [NSColor whiteColor].CGColor;

}
*/

@end
