//
//  MyCell.h
//  Cart
//
//  Created by 珍玮 on 16/5/30.
//  Copyright © 2016年 ZhenWei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@property (nonatomic, copy) void (^addCartBlock)(MyCell *selectcCell);

@end
