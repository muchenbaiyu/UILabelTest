//
//  ViewController.m
//  UILabelTest
//
//  Created by 闫纲忠 on 2017/6/24.
//  Copyright © 2017年 ygz. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+YGZExt.h"
#import "UIView+YGZExt.h"

@interface ViewController ()

@property (nonatomic, weak) UILabel *label1;
@property (nonatomic, weak) UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, self.view.width - 100, 40)];
    textField.borderStyle = UITextBorderStyleLine;
    textField.placeholder = @"输入测试文字";
    textField.textColor = [UIColor blackColor];
    textField.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:textField];
    self.textField = textField;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldTextDidChange:) name:UITextFieldTextDidChangeNotification object:nil];
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, textField.bottom + 50, 0, 0)];
    label1.textColor = [UIColor blackColor];
    label1.font = [UIFont systemFontOfSize:14];
    label1.backgroundColor = [UIColor redColor];
    label1.numberOfLines = 0;
    [self.view addSubview:label1];
    self.label1 = label1;
}

- (void)textFieldTextDidChange:(NSNotification *)noti {
    UITextField *textField = noti.object;
//    self.label1.text = textField.text;
    self.label1.attributedText = [self.label1 attributedStringWith:textField.text lineSpace:6 limitWidth:self.view.width - 40];
    CGSize size = [self.label1 textSizeForLimitedSize:CGSizeMake(self.view.width - 40, 100)];
    self.label1.size = size;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
