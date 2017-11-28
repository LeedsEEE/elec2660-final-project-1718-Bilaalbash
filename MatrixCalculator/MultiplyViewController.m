//
//  MultiplyViewController.m
//  MatrixCalculator
//
//  Created by Bilaal Bashir on 21/11/2017.
//  Copyright © 2017 Bilaal Bashir. All rights reserved.
//

#import "MultiplyViewController.h"

@interface MultiplyViewController (){
    NSArray *matrixSize;
}

@end

@implementation MultiplyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstPickerMultiply.delegate = self;
    self.firstPickerMultiply.dataSource = self;
    
    //same for second
    self.secondPickerMultiply.delegate = self;
    self.secondPickerMultiply.dataSource = self;
    
    matrixSize = @[@"1x1",@"1x2",@"1x3",@"1x4",@"2x1",@"2x2",@"2x3",@"2x4",@"3x1",@"3x2",@"3x3",@"3x4",@"4x1",@"4x2",@"4x3",@"4x4"];
}


-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView  {
    
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return matrixSize.count;
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return matrixSize[row];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
