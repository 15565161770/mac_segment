//
//  MyTableRow.h
//  Demo
//
//  Created by 仝兴伟 on 2017/9/14.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MyTableRow : NSTableRowView


/**
 //选中的高亮风格
 
 typedef NS_ENUM(NSInteger, NSTableViewSelectionHighlightStyle) {
 //无高亮风格
 NSTableViewSelectionHighlightStyleNone,
 //规则的高亮风格
 NSTableViewSelectionHighlightStyleRegular = 0,
 //源列表风格
 NSTableViewSelectionHighlightStyleSourceList = 1,
 };
 
@property NSTableViewSelectionHighlightStyle selectionHighlightStyle;
//是否强调
@property(getter=isEmphasized) BOOL emphasized;
//设置是否行组风格
@property(getter=isGroupRowStyle) BOOL groupRowStyle;
//是否选中状态
@property(getter=isSelected) BOOL selected;
//其前一行的选中状态
@property(getter=isPreviousRowSelected) BOOL previousRowSelected;
//其后一行的选中状态
@property(getter=isNextRowSelected) BOOL nextRowSelected;
//设置此行是否浮动
@property(getter=isFloating) BOOL floating;
//拖放拖动效果
@property(getter=isTargetForDropOperation) BOOL targetForDropOperation;
//拖放风格
@property NSTableViewDraggingDestinationFeedbackStyle draggingDestinationFeedbackStyle;
//设置拖放目标的缩进量
@property CGFloat indentationForDropOperation;
//背景色
@property(copy) NSColor *backgroundColor;

//子类重写下面方法来进行行容器视图的自定义
//画背景色
- (void)drawBackgroundInRect:(NSRect)dirtyRect;
//画选中背景
- (void)drawSelectionInRect:(NSRect)dirtyRect;
//画分割线
- (void)drawSeparatorInRect:(NSRect)dirtyRect;
//绘制拖放时的用户反馈IU
- (void)drawDraggingDestinationFeedbackInRect:(NSRect)dirtyRect;

//列数
@property(readonly) NSInteger numberOfColumns;
//提供的访问特定视图的方法
- (nullable id)viewAtColumn:(NSInteger)column;
 */
@end
