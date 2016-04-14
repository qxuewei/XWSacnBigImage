# XWSacnBigImage
点击图片查看大图，再次点击还原原始尺寸

使用方法：
1.导入XWScanImageClass
2.为UIImageView增加点击事件，并且开始用户交互属性
    //为UIImageView1添加点击事件
    UITapGestureRecognizer *tapGestureRecognizer1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scanBigImageClick1:)];
    [_ImageView1 addGestureRecognizer:tapGestureRecognizer1];
    //让UIImageView和它的父类开启用户交互属性
    [_ImageView1 setUserInteractionEnabled:YES];
3.在监听事件方法中调用类方法 scanBigImageWithImageView
#pragma mark - 浏览大图点击事件
    -(void)scanBigImageClick1:(UITapGestureRecognizer *)tap{
    NSLog(@"点击图片");
    UIImageView *clickedImageView = (UIImageView *)tap.view;
    [XWScanImage scanBigImageWithImageView:clickedImageView];
    }
