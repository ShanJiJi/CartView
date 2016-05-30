//
//  MyCell.m
//  Cart
//
//  Created by 珍玮 on 16/5/30.
//  Copyright © 2016年 ZhenWei. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)addCartBrnClick:(id)sender {
    
    self.addCartBlock(self);
    
}

@end
