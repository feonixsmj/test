//
//  ViewController.m
//  test
//
//  Created by 苏敏杰 on 2017/8/24.
//  Copyright © 2017年 苏敏杰. All rights reserved.
//

#import "ViewController.h"
#import "FXAgeCell.h"
#import "FXNameCell.h"
#import "FXBaseCell.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (nonatomic, strong) NSMutableArray *data;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.data = [NSMutableArray arrayWithCapacity:100];
   
    for (NSInteger i = 0; i < 100; i++) {
        NSString *str = [NSString stringWithFormat:@"good_%ld",i];
        [self.data addObject:str];
    }
//    
    [self.tableView registerClass:[FXAgeCell class] forCellReuseIdentifier:NSStringFromClass([FXAgeCell class])];
    [self.tableView registerClass:[FXNameCell class] forCellReuseIdentifier:NSStringFromClass([FXNameCell class])];
    [self.tableView registerClass:[FXBaseCell class] forCellReuseIdentifier:NSStringFromClass([FXBaseCell class])];
    
    CGRect rect = self.redView.frame;
    rect.size = CGSizeMake(24, 24);
    self.redView.frame = rect;
    
    self.redView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.redView.layer.cornerRadius = 12;
    self.redView.layer.borderWidth = 4;
    self.redView.layer.masksToBounds = YES;
    
//    [self.tableView registerNib:[UINib nibWithNibName:@"FXAgeCell" bundle:nil]  forCellReuseIdentifier:@"FXAgeCell"];
//    [self.tableView registerNib:[UINib nibWithNibName:@"FXNameCell" bundle:nil]  forCellReuseIdentifier:@"FXNameCell"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FXBaseCell *cell;
    
    NSString *cellIdentifier;
    
    NSString *str = self.data[indexPath.row];
    
    if (indexPath.row %2 ==0) {
        cellIdentifier = NSStringFromClass([FXAgeCell class]);
    }else{
        cellIdentifier = NSStringFromClass([FXNameCell class]);
    }
    
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    if (indexPath.row %2 ==0) {
        cell.agelabel.text = str;
    }else{
        cell.namelabel.text = str;
    }
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
