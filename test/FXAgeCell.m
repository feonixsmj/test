//
//  FXAgeCell.m
//  test
//
//  Created by 苏敏杰 on 2017/8/24.
//  Copyright © 2017年 苏敏杰. All rights reserved.
//

#import "FXAgeCell.h"


@implementation FXAgeCell




- (void)awakeFromNib{
     [super awakeFromNib];
}

- (void)setAge:(NSString *)age{
    _age = age;
    self.agelabel.text = age;
}

- (void)customInit{
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
