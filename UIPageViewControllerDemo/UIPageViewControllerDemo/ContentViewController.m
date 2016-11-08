//
//  ContentViewController.m
//  UIPageViewControllerDemo
//
//  Created by Herb on 16/4/12.
//  Copyright © 2016年 Herb. All rights reserved.
//

#import "ContentViewController.h"
#define kRandomColor ([UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0f])

@interface ContentViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation ContentViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = kRandomColor;
    _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 100)];
    _contentLabel.numberOfLines = 0;
    _contentLabel.backgroundColor = kRandomColor;
    [self.view addSubview:_contentLabel];
}

- (void) viewWillAppear:(BOOL)paramAnimated{
    [super viewWillAppear:paramAnimated];
    _contentLabel.text = _content;
//    [self.myWebView loadHTMLString:_dataObject baseURL:nil];
//    [self.view addSubview:self.myWebView];
    
}

@end
