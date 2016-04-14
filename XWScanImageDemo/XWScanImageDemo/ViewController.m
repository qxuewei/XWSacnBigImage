//
//  ViewController.m
//  XWScanImageDemo
//
//  Created by 邱学伟 on 16/4/14.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "XWScanImage.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *ImageView1;

@property (weak, nonatomic) IBOutlet UIImageView *ImageView2;

@property (weak, nonatomic) IBOutlet UIImageView *ImageView3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //为UIImageView1添加点击事件
    UITapGestureRecognizer *tapGestureRecognizer1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scanBigImageClick1:)];
    [_ImageView1 addGestureRecognizer:tapGestureRecognizer1];
    //让UIImageView和它的父类开启用户交互属性
    [_ImageView1 setUserInteractionEnabled:YES];
    
    
    //为UIImageView2添加点击事件
    UITapGestureRecognizer *tapGestureRecognizer2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scanBigImageClick2:)];
    [_ImageView2 addGestureRecognizer:tapGestureRecognizer2];
    [_ImageView2 setUserInteractionEnabled:YES];
    
    //为UIImageView3添加点击事件
    UITapGestureRecognizer *tapGestureRecognizer3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scanBigImageClick3:)];
    [_ImageView3 addGestureRecognizer:tapGestureRecognizer3];
    [_ImageView3 setUserInteractionEnabled:YES];

}

#pragma mark - 浏览大图点击事件
-(void)scanBigImageClick1:(UITapGestureRecognizer *)tap{
    NSLog(@"点击图片");
    UIImageView *clickedImageView = (UIImageView *)tap.view;
    [XWScanImage scanBigImageWithImageView:clickedImageView];
}

-(void)scanBigImageClick2:(UITapGestureRecognizer *)tap{
    NSLog(@"点击图片");
    UIImageView *clickedImageView = (UIImageView *)tap.view;
    
    [XWScanImage scanBigImageWithImageView:clickedImageView];
    
}
-(void)scanBigImageClick3:(UITapGestureRecognizer *)tap{
    NSLog(@"点击图片");
    UIImageView *clickedImageView = (UIImageView *)tap.view;
    
    [XWScanImage scanBigImageWithImageView:clickedImageView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
