//
//  FirstViewController.m
//  MatrixCalculator
//
//  Created by Bilaal Bashir on 21/11/2017.
//  Copyright © 2017 Bilaal Bashir. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()
{
    NSArray *matrixSize;
}
@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.firstPickerAdd.delegate = self;
    self.firstPickerAdd.dataSource = self;
    
    //same for second
    self.secondPickerAdd.delegate = self;
    self.secondPickerAdd.dataSource = self;
   
    self.secondPickerAdd.hidden = YES;
    self.myButton.hidden = YES;
    
    matrixSize = @[@"1x1",@"1x2",@"1x3",@"1x4",@"2x1",@"2x2",@"2x3",@"2x4",@"3x1",@"3x2",@"3x3",@"3x4",@"4x1",@"4x2",@"4x3",@"4x4"];
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView  {
    
    return 1;
}

-(void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    [self pickerView:self.firstPickerAdd didSelectRow:0 inComponent:0];
}
    
- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger rows = 0;
    
    if(pickerView == self.firstPickerAdd) {
        rows = matrixSize.count;
    }
    else if (pickerView == self.secondPickerAdd) {
        rows = 1;
    }
    return rows;
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    NSString *title = [[NSString alloc] init];
    
    if (pickerView == self.firstPickerAdd) {
        title = matrixSize[row];
    }
    else if (pickerView == self.secondPickerAdd){
        
        title = [matrixSize objectAtIndex:[self.firstPickerAdd selectedRowInComponent:0]];
    }
    
    return title;
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    self.secondPickerAdd.hidden = NO;
    [self.secondPickerAdd reloadAllComponents];
    
    //hide textfields using picker
    
    if (pickerView == self.firstPickerAdd) {
        NSInteger row = [self.firstPickerAdd selectedRowInComponent:0];
        if (row  == 0) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = YES;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = YES;
            self.matrixA6.hidden = YES;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = YES;
            self.matrixA10.hidden = YES;
            self.matrixA11.hidden = YES;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = YES;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;

            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = YES;
            self.matrixB3.hidden = YES;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = YES;
            self.matrixB6.hidden = YES;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = YES;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
        }
        else if (row == 1) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = YES;
            self.matrixA6.hidden = YES;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = YES;
            self.matrixA10.hidden = YES;
            self.matrixA11.hidden = YES;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = YES;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = YES;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = YES;
            self.matrixB6.hidden = YES;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = YES;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
        }
        else if (row == 2) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = YES;
            self.matrixA6.hidden = YES;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = YES;
            self.matrixA10.hidden = YES;
            self.matrixA11.hidden = YES;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = YES;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = NO;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = YES;
            self.matrixB6.hidden = YES;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = YES;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
        }
        else if (row == 3) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = NO;
            self.matrixA5.hidden = YES;
            self.matrixA6.hidden = YES;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = YES;
            self.matrixA10.hidden = YES;
            self.matrixA11.hidden = YES;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = YES;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = NO;
            self.matrixB4.hidden = NO;
            self.matrixB5.hidden = YES;
            self.matrixB6.hidden = YES;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = YES;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
        }
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didselect1:(id)sender {
    self.secondPickerAdd.hidden = NO;
    [self.secondPickerAdd reloadAllComponents];
}
@end
