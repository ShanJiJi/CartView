//
//  MallCell.m
//  Cart
//
//  Created by 珍玮 on 16/5/31.
//  Copyright © 2016年 ZhenWei. All rights reserved.
//

#import "MallCell.h"

@interface MallCell ()<UIActionSheetDelegate>

@property(nonatomic,strong)UIImageView *sentImage;

@end

@implementation MallCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UILongPressGestureRecognizer *longTap = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longTapAction:)];
    longTap.minimumPressDuration = 0.5;
    self.image.userInteractionEnabled = YES;
    [self.image addGestureRecognizer:longTap];
    
}

-(void)longTapAction:(UILongPressGestureRecognizer *)gesture{
    
    if (gesture.state == UIGestureRecognizerStateBegan) {
        
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"保存图片" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"保存图片到手机", nil];
        actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
        
        [actionSheet showInView:self];
        
        UIImageView *imageView = (UIImageView *)[gesture view];
        _sentImage = imageView;
    }
    
}


-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 0) {
        UIImageWriteToSavedPhotosAlbum(_sentImage.image, self, @selector(imageSavedToPhotosAlbum:didFinishSavingWithError:contextInfo:), nil);
    }
}

-(void)imageSavedToPhotosAlbum:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo{
    
    NSString *message = @"呵呵";
    if (!error) {
        message = @"成功保存到相册";
    }else{
        message = [error description];
    }
    
    NSLog(@"message = %@",message);
    
}











- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
