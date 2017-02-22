//
//  ViewController.m
//  pagination
//
//  Created by Gupta on 1/20/17.
//  Copyright © 2017 anup. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControll;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Horizontal arrangement
    self.scrollview.delegate=self;
     self.pageControll.currentPage = 0;
     UIImage *image1 = [UIImage imageNamed:@"Red.jpg"];
     UIImage *image2 = [UIImage imageNamed:@"Yellow.jpg"];
     UIImage *image3 = [UIImage imageNamed:@"Green.jpg"];
     UIImage *image4 = [UIImage imageNamed:@"Blue.jpg"];
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image1];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image2];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image3];
    UIImageView *imageView4 = [[UIImageView alloc] initWithImage:image4];
    
    _scrollview.frame=CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    float ScreenWidth=_scrollview.frame.size.width;
    float ScreenHight=_scrollview.frame.size.height;
    
    imageView1.frame=CGRectMake(0, 0, ScreenWidth, ScreenHight);
    imageView2.frame=CGRectMake(ScreenWidth, 0, ScreenWidth, ScreenHight);
    imageView3.frame=CGRectMake(ScreenWidth*2, 0, ScreenWidth, ScreenHight);
    imageView4.frame=CGRectMake(ScreenWidth*3, 0, ScreenWidth, ScreenHight);
    
    [self.scrollview addSubview:imageView1];
    [self.scrollview addSubview:imageView2];
    [self.scrollview addSubview:imageView3];
    [self.scrollview addSubview:imageView4];
    
    
    
    _scrollview.contentSize = CGSizeMake(_scrollview.frame.size.width * 4, self.scrollview.frame.size.height);
   
   
    
  
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    scrollView.contentOffset = CGPointMake(scrollView.bounds.size.width, 0);
    float  pageWidth= scrollView.frame.size.width;
    float currentPage=floor((scrollView.contentOffset.x-pageWidth/2)/pageWidth)+1;
    
    self.pageControll.currentPage = currentPage;
    

    
}

@end
