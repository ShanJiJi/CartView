//
//  ViewController.m
//  Cart
//
//  Created by 珍玮 on 16/5/30.
//  Copyright © 2016年 ZhenWei. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>{
    int num;
}
@property (weak, nonatomic) IBOutlet UIImageView *selectImage;

@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    num = 0;
    [self.greenBtn setTitle:[NSString stringWithFormat:@"%d",num] forState:0];
    
    _greenBtn.layer.masksToBounds = YES;
    _greenBtn.layer.cornerRadius = 20;
    
}

- (IBAction)redBtnClick:(id)sender {
    
    UIImageView  *imageView = [[UIImageView alloc] initWithFrame:_redBtn.frame];
    
    imageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:imageView];

    //设置一个基础动画
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    rotationAnimation.toValue = [NSNumber numberWithFloat:M_PI *11.0];
    //对象的基本时间
    rotationAnimation.duration = 1.0;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = 0;
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [imageView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
        
    });
    
    [UIView animateWithDuration:1.00 animations:^{
        
        imageView.frame = CGRectMake(self.greenBtn.center.x, self.greenBtn.center.y, 0, 0);
        
        
    } completion:^(BOOL finished) {
        
        num ++;
        [imageView removeFromSuperview];
        // 先缩小
        _greenBtn.transform = CGAffineTransformMakeScale(0.7, 0.7);
        
        // 弹簧动画，参数分别为：时长，延时，弹性（越小弹性越大），初始速度
        [UIView animateWithDuration: 0.7 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0.3 options:0 animations:^{
            // 放大
            _greenBtn.transform = CGAffineTransformMakeScale(1, 1);
            [self.greenBtn setTitle:[NSString stringWithFormat:@"%d",num] forState:0];
            
        } completion:nil];
        
    }];
    
    
}

- (IBAction)greenBtnClick:(id)sender {
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    
    cell.myImageView.image = [UIImage imageNamed:@"组1"];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MyCell *cell = [_mainTableView cellForRowAtIndexPath:indexPath];

    //把选中cell在tableView中的坐标转化为在superView上的坐标
    CGRect rectInTableView = [_mainTableView rectForRowAtIndexPath:indexPath];
    CGRect cellFrame = [_mainTableView convertRect:rectInTableView toView:[_mainTableView superview]];
    
    MyCell *animationCell = [_mainTableView dequeueReusableCellWithIdentifier:@"MyCell"];
    animationCell.myImageView.image = cell.myImageView.image;
    animationCell.frame = cellFrame;
    [self.view addSubview:animationCell];
    
    [UIView animateWithDuration:1.00 animations:^{
 
        // 先缩小
        animationCell.center = self.greenBtn.center;
        animationCell.transform = CGAffineTransformMakeScale(0.1, 0.1);
        animationCell.alpha = 0.1;
        
    } completion:^(BOOL finished) {
        
        num ++;
        [animationCell removeFromSuperview];
        // 先缩小
        _greenBtn.transform = CGAffineTransformMakeScale(0.7, 0.7);
        
        // 弹簧动画，参数分别为：时长，延时，弹性（越小弹性越大），初始速度
        [UIView animateWithDuration: 0.7 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0.3 options:0 animations:^{
            // 放大
            _greenBtn.transform = CGAffineTransformMakeScale(1, 1);
            [self.greenBtn setTitle:[NSString stringWithFormat:@"%d",num] forState:0];
            
        } completion:nil];
    }];
    
    
    
}


@end
