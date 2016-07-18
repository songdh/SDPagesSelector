//
//  ViewController.m
//  SDPagesSelector
//
//  Created by 宋东昊 on 16/7/17.
//  Copyright © 2016年 songdh. All rights reserved.
//

#import "ViewController.h"
#import "SDCursorView.h"
#import "ShowViewController.h"

@interface ViewController ()
@property (nonatomic, strong) SDCursorView *cursorView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *titles = @[@"头条",@"大数据股票财经",@"精选",@"娱乐视",@"热点点附近会计分录的",@"体育",@"科技",@"汽车"];
    _cursorView = [[SDCursorView alloc]initWithFrame:CGRectMake(0, 20, CGRectGetWidth(self.view.bounds), 40)];
    //设置子页面容器的高度
    _cursorView.contentViewHeight = CGRectGetHeight(self.view.bounds)-40;
    //设置控件所在controller
    _cursorView.parentViewController = self;
    _cursorView.titles = titles;
    
    //设置所有子controller
    NSMutableArray *contrors = [NSMutableArray array];
    for (NSString *title in titles) {
        ShowViewController *controller = [[ShowViewController alloc]init];
        controller.content = title;
        [contrors addObject:controller];
    }
    _cursorView.controllers = [contrors copy];
    //设置字体和颜色
    _cursorView.normalColor = [UIColor blackColor];
    _cursorView.selectedColor = [UIColor redColor];
    _cursorView.selectedFont = [UIFont systemFontOfSize:16];
    _cursorView.normalFont = [UIFont systemFontOfSize:13];
    _cursorView.backgroundColor = [UIColor redColor];
    _cursorView.lineView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:_cursorView];
    
    //属性设置完成后，调用此方法绘制界面
    [_cursorView reloadPages];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
