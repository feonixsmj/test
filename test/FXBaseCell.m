//
//  FXBaseCell.m
//  test
//
//  Created by 苏敏杰 on 2017/8/24.
//  Copyright © 2017年 苏敏杰. All rights reserved.
//

#import "FXBaseCell.h"

@implementation FXBaseCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self = [[NSBundle mainBundle] loadNibNamed:@"FXBaseCell" owner:self options:nil].lastObject;
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
