//
//  SecondViewController.m
//  MatrixCalculator
//
//  Created by Bilaal Bashir on 21/11/2017.
//  Copyright © 2017 Bilaal Bashir. All rights reserved.
//

#import "SubtractViewController.h"

@interface SubtractViewController (){
    NSArray *matrixSize;
}

@end

@implementation SubtractViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstPickerSubtract.delegate = self;
    self.firstPickerSubtract.dataSource = self;
    
    //same for second
    self.secondPickerSubtract.delegate = self;
    self.secondPickerSubtract.dataSource = self;
    
    self.secondPickerSubtract.hidden = YES;
    
    matrixSize = @[@"1x1",@"1x2",@"1x3",@"1x4",@"2x1",@"2x2",@"2x3",@"2x4",@"3x1",@"3x2",@"3x3",@"3x4",@"4x1",@"4x2",@"4x3",@"4x4"];
}


-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView  {
    
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger rows = 0;
    
    if (pickerView == self.firstPickerSubtract) {
        rows = matrixSize.count;
    }
    else if (pickerView == self.secondPickerSubtract) {
        rows = 1;
    }
    return rows;
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    NSString *title = [[NSString alloc] init];
    
    if (pickerView == self.firstPickerSubtract) {
        title = matrixSize[row];
    }
    else if (pickerView == self.secondPickerSubtract) {
        
        title = [matrixSize objectAtIndex:[self.firstPickerSubtract selectedRowInComponent:0]];
    }
    
    return title;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)didSelect:(id)sender {
    self.secondPickerSubtract.hidden = NO;
    [self.secondPickerSubtract reloadAllComponents];
}
@end
