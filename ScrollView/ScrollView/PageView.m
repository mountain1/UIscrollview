//
//  PageView.m
//  ScrollView
//
//  Created by mtsapple on 2018/7/4.
//  Copyright © 2018年 mtsapple. All rights reserved.
//

#import "PageView.h"

@interface PageView ()
@property(nonatomic, strong)NSArray *imageName;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViews;
@property (weak, nonatomic) IBOutlet UIPageControl *pageViews;


@end
@implementation PageView


+(instancetype)pageView{

   return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];

}



-(void)layoutSubviews{
    [self layoutSubviews];
    self.scrollViews.frame = self.bounds;
    CGFloat scrollW = self.scrollViews.frame.size.width;
    CGFloat scrollH = self.scrollViews.frame.size.height;
    
    CGFloat pageW = 100;
    CGFloat pageH = 30;
    
    CGFloat pageX = scrollW-pageW;
    CGFloat pageY = scrollH-pageH;
    
    self.pageViews.frame = CGRectMake(pageX, pageY, pageW, pageH);
    self.scrollViews.contentSize = CGSizeMake(self.imageName.count * scrollW, 0);
    for (int i = 0; i < self.scrollViews.subviews.count; i ++) {
        UIImageView *imageView = self.scrollViews.subviews[i];
        imageView.frame = CGRectMake(i * scrollW, 0, scrollW, scrollH);
        [self.scrollViews addSubview: imageView];
    }
    
    
}

@end


//-(void)test{
//
//
//
////    +(instancetype)pageView{
////
////        return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
////
////    }
//
//
//-(void)layoutSubviews{
//    [self layoutSubviews];
//    self.scrollView.frame = self.bounds;
//    CGFloat scrolW = self.scrollView.frame.size.width;
//    CGFloat scrolH = self.scrollView.frame.size.height;
//
//    self.scrollView.backgroundColor = [UIColor blueColor];
//
//    CGFloat pageW = 100;
//    CGFloat pageH = 30;
//    CGFloat pageX = scrolW-pageW;
//    CGFloat pageY = scrolW-pageH;
//    self.pageView.frame = CGRectMake(pageX, pageY, scrolW, scrolH);
//
//    self.scrollView.contentSize = CGSizeMake(self.imageNames.count * scrolW, 0);
//
//    for (int i =0; i < self.scrollView.subviews.count; i++) {
//        UIImageView * imageView = self.scrollView.subviews[i];
//        imageView.frame = CGRectMake(i *scrolW, 0, scrolW, scrolH);
//
//        imageView.backgroundColor = [UIColor redColor];
//
//        [self.scrollView addSubview:imageView];
//    }
//
//}
//}

