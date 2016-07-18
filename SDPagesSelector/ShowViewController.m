//
//  ShowViewController.m
//  SDPagesSelector
//
//  Created by 宋东昊 on 16/7/15.
//  Copyright © 2016年 songdh. All rights reserved.
//

#import "ShowViewController.h"

@interface ShowViewController ()
@property (nonatomic, strong) UILabel *contentLabel;
@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [self randomColor];
    
    _contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 200)];
    _contentLabel.center = self.view.center;
    _contentLabel.textColor = [UIColor redColor];
    _contentLabel.textAlignment = NSTextAlignmentCenter;
    _contentLabel.text = self.content;
    [self.view addSubview:_contentLabel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor *)randomColor
{
    static BOOL seeded = NO;
    if(!seeded) {
        seeded = YES;
        srandom((unsigned)time(NULL));
    }
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
