//
//  AppDelegate.m
//  segment_table
//
//  Created by 仝兴伟 on 2017/11/14.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

#import "AppDelegate.h"
#import "segmentcell.h"
#import "MyTableRow.h"
@interface AppDelegate ()<NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic, strong) NSTableView *tableview;
@property (nonatomic, strong) NSScrollView *tableviewScrollView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSMutableArray *imageArray;
@property (nonatomic, strong) NSMutableArray *imageSelectArray;
@property (nonatomic, strong) segmentcell *cellView;
@property (nonatomic, assign) BOOL selected;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self addTableData];
    [self addTbleview];
    NSIndexSet *set = [NSIndexSet indexSetWithIndex:0];
    [self.tableview selectRowIndexes:set byExtendingSelection:NO];
}

- (void)addTableData {
    self.dataArray = [NSMutableArray arrayWithObjects:@"我的应用",@"我的云翔",@"我的消息",@"我的设置", nil];
    self.imageArray = [NSMutableArray arrayWithObjects:@"leftbar__icon_home",@"leftbar_icon_cloudbox",@"leftbar__icon_home",@"leftbar_icon_setting", nil];
    self.imageSelectArray = [NSMutableArray arrayWithObjects:@"leftbar__icon_home_Selected",@"leftbar_icon_cloudbox_Selected",@"leftbar__icon_home_Selected",@"leftbar_icon_setting_Selected", nil];
}
- (void)addTbleview {
    self.tableviewScrollView = [[NSScrollView alloc]initWithFrame:CGRectMake(100,100, 158, 193)];
    self.tableview = [[NSTableView alloc]initWithFrame:CGRectMake(100, 100, 158, 180)];
    [self.tableview setAutoresizesSubviews:YES];
    [self.tableview setFocusRingType:NSFocusRingTypeDefault];
    self.tableview.headerView = nil;
    self.tableview.rowHeight = 46;
    self.tableview.rowSizeStyle = NSTableViewRowSizeStyleDefault;
    //  创建单元格 这里单元格设置为1个
    NSTableColumn *column1 = [[NSTableColumn alloc]initWithIdentifier:@"name"];
    column1.title = @"";
    column1.width = 158;
    [self.tableview addTableColumn:column1];
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
    // 添加分割线
    self.tableview.gridStyleMask =  NSTableViewGridNone;
    // 设置分割线的颜色
    
    [self.tableviewScrollView setDocumentView:self.tableview];
    [self.window.contentView addSubview:self.tableviewScrollView];

}

#pragma mark -- 代理
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    if (self.dataArray.count == 0) {
        return 0;
    }
    return self.dataArray.count;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    return  46;
}


- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    return nil;
}

// 设置某个元素的具体视图
-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
        segmentcell *cellView = [tableView makeViewWithIdentifier:@"kCellIdentifiers" owner:self];
        if (cellView == nil) {
            cellView = [[segmentcell alloc] init];
            [cellView setIdentifier: @"kCellIdentifiers"];
        }
    cellView.imageView_s.image = [NSImage imageNamed:self.imageArray[row]];
    cellView.titleLable.stringValue = self.dataArray[row];
        return cellView;
}

- (nullable NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row{
    MyTableRow * rowView = [[MyTableRow alloc]init];
    return rowView;
}

-(void)tableViewSelectionDidChange:(nonnull NSNotification* )notification{
    self.tableview = notification.object;
    NSInteger row = (long)self.tableview.selectedRow;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        // some one-time task
        segmentcell *cell = [self.tableview viewAtColumn:0 row:row makeIfNecessary:YES];
        cell.imageView_s.image = [NSImage imageNamed:self.imageSelectArray[row]];
        cell.titleLable.textColor = [NSColor colorWithRed:1/255.0 green:1/255.0 blue:1/255.0 alpha:1.0];
    });
    
}


@end
