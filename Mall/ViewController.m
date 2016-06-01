//
//  ViewController.m
//  Mall
//
//  Created by 珍玮 on 16/5/31.
//  Copyright © 2016年 ZhenWei. All rights reserved.
//

#import "ViewController.h"
#import "MallIbfo.h"
#import "MallCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    
    NSMutableArray *data;
    
}
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property(nonatomic,weak) MallCell *mallCell;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    data = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        MallIbfo *mall = [[MallIbfo alloc] init];
        
        if (i%5 == 1) {
            mall.mallTitle = @"杀寇决等哈就坑阿达就开始打哈看得见哈杀就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几到几哈接电话";
            mall.mallContent = @"的交伙食费就开始放暑假上放暑假的刚就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几时间各回各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            [data addObject:mall];
        }else if (i%5 == 2){
            mall.mallTitle = @"杀寇决等哈就坑阿达就开始打哈就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几哈杀到几哈接电话";
            mall.mallContent = @"的交伙食费就开始放暑假上放暑假的刚换时间就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            
            [data addObject:mall];
        }else if (i%5 == 3){
            mall.mallTitle = @"杀寇决等哈就坑阿达就开始打";
            mall.mallContent = @"的交伙食费就开始放暑假上放暑假的刚换时间各回各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            [data addObject:mall];
        }else if (i%5 == 4){
            mall.mallTitle = @"杀寇决等哈就坑阿接电话";
            
            mall.mallContent = @"Test开始放开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始开始放暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始暑假上放始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑开始放暑假上放暑";
            [data addObject:mall];
        }else{
            mall.mallTitle = @"杀寇决等哈就坑阿达就开始打哈看得见哈杀到几哈接电话";
            mall.mallContent = @"的交伙食费就开始放暑就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几就坑阿达就开始打哈看得见哈杀到几假上放暑假的刚换时间各回各家时间看刚换时间供货商看估计是司空见惯和世界观海口市个机会可是供货商髋关节还是个开奖号工商局和顾客极光谁开个机是";
            [data addObject:mall];
        }
    }
    [self.mainTableView reloadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.mallCell = [_mainTableView dequeueReusableCellWithIdentifier:@"MallCell"];
    self.mallCell.selectionStyle = UITableViewCellSelectionStyleNone;
    MallIbfo *ibfo = data[indexPath.row];
    
    self.mallCell.title.text = ibfo.mallTitle;
    self.mallCell.content.text = ibfo.mallContent;
    
    return self.mallCell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGFloat preMaxWidth = [UIScreen mainScreen].bounds.size.width - 30 - self.mallCell.image.frame.size.width;
    
    MallIbfo *ibfo = data[indexPath.row];
    
    self.mallCell.title.text = ibfo.mallTitle;
    self.mallCell.content.text = ibfo.mallContent;
    
    [self.mallCell.title setPreferredMaxLayoutWidth:preMaxWidth];
    
    [self.mallCell.content setPreferredMaxLayoutWidth:preMaxWidth];
    
    [self.mallCell setNeedsUpdateConstraints];
    
    [self.mallCell updateConstraintsIfNeeded];
    
    CGFloat height = [self.mallCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
    
    return height;
}

@end
