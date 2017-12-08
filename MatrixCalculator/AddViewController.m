//
//  FirstViewController.m
//  MatrixCalculator
//
//  Created by Bilaal Bashir on 21/11/2017.
//  Copyright © 2017 Bilaal Bashir. All rights reserved.
//

#import "AddViewController.h"

// References
// Icons for the tabbed view were found from https://icons8.com
// Badge Icon was adapted from http://www.iconarchive.com/tag/calculator
// Used to hide keyboard https://www.youtube.com/watch?v=RNG9Sbc7qvI
// How to add the textfield was found by using https://stackoverflow.com/questions/10094063/addition-of-two-numbers-using-textfield
// Changing the keboard to a key pad: https://stackoverflow.com/questions/22348395/text-field-keyboard-set-to-number-pad-but-regular-keyboard-is-displaying-on-sele

@interface AddViewController () <UITextFieldDelegate>
{
    NSArray *matrixSize;
}
@end

@implementation AddViewController

- (IBAction)backgroundTapped:(id)sender {
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.firstPickerAdd.delegate = self;
    self.firstPickerAdd.dataSource = self;

    self.secondPickerAdd.delegate = self;
    self.secondPickerAdd.dataSource = self;
   
    self.secondPickerAdd.hidden = YES; //This hides the second picker
    self.myButton.hidden = YES; //Hide Button
    
    self.result1.hidden = YES;
    self.result2.hidden = YES;
    self.result3.hidden = YES;
    self.result4.hidden = YES;
    self.result5.hidden = YES;
    self.result6.hidden = YES;
    self.result7.hidden = YES;
    self.result8.hidden = YES;
    self.result9.hidden = YES;
    self.result10.hidden = YES;
    self.result11.hidden = YES;
    self.result12.hidden = YES;
    self.result13.hidden = YES;
    self.result14.hidden = YES;
    self.result15.hidden = YES;
    self.result16.hidden = YES;
    
#pragma mark - Disabling the Result textfield
    self.result1.enabled = NO;
    self.result2.enabled = NO;
    self.result3.enabled = NO;
    self.result4.enabled = NO;
    self.result5.enabled = NO;
    self.result6.enabled = NO;
    self.result7.enabled = NO;
    self.result8.enabled = NO;
    self.result9.enabled = NO;
    self.result10.enabled = NO;
    self.result11.enabled = NO;
    self.result12.enabled = NO;
    self.result13.enabled = NO;
    self.result14.enabled = NO;
    self.result15.enabled = NO;
    self.result16.enabled = NO;


    
matrixSize = @[@"1x1",@"1x2",@"1x3",@"1x4",@"2x1",@"2x2",@"2x3",@"2x4",@"3x1",@"3x2",@"3x3",@"3x4",@"4x1",@"4x2",@"4x3",@"4x4"];
    
#pragma mark - Making Keyboard a Numberpad

    _matrixA1.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA2.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA3.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA4.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA5.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA6.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA7.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA8.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA9.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA10.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA11.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA12.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA13.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA14.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA15.keyboardType = UIKeyboardTypeNumberPad;
    _matrixA16.keyboardType = UIKeyboardTypeNumberPad;
    
    _matrixB1.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB2.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB3.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB4.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB5.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB6.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB7.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB8.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB9.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB10.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB11.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB12.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB13.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB14.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB15.keyboardType = UIKeyboardTypeNumberPad;
    _matrixB16.keyboardType = UIKeyboardTypeNumberPad;
    
    _result1.keyboardType = UIKeyboardTypeNumberPad;
    _result2.keyboardType = UIKeyboardTypeNumberPad;
    _result3.keyboardType = UIKeyboardTypeNumberPad;
    _result4.keyboardType = UIKeyboardTypeNumberPad;
    _result5.keyboardType = UIKeyboardTypeNumberPad;
    _result6.keyboardType = UIKeyboardTypeNumberPad;
    _result7.keyboardType = UIKeyboardTypeNumberPad;
    _result8.keyboardType = UIKeyboardTypeNumberPad;
    _result9.keyboardType = UIKeyboardTypeNumberPad;
    _result10.keyboardType = UIKeyboardTypeNumberPad;
    _result11.keyboardType = UIKeyboardTypeNumberPad;
    _result12.keyboardType = UIKeyboardTypeNumberPad;
    _result13.keyboardType = UIKeyboardTypeNumberPad;
    _result14.keyboardType = UIKeyboardTypeNumberPad;
    _result15.keyboardType = UIKeyboardTypeNumberPad;
    _result16.keyboardType = UIKeyboardTypeNumberPad;

    
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
    

#pragma mark - Hiding the textfields using the first picker
    
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
            
            self.result1.hidden = NO;
            self.result2.hidden = YES;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = YES;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
           
            NSLog(@"sets matrix 1x1");

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
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = YES;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 1x2");

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
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = YES;
            self.result5.hidden = YES;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 1x3");

            
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
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = NO;
            self.result5.hidden = YES;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 1x4");

            
        }
        else if (row == 4) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = YES;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
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
            self.matrixB5.hidden = NO;
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
            
            self.result1.hidden = NO;
            self.result2.hidden = YES;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 2x1");

        }
        else if (row == 5) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
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
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
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
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 2x2");

            
        }
        else if (row == 6) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = NO;
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
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = NO;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = YES;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = NO;
            self.result8.hidden = YES;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 2x3");

            
        }
        else if (row == 7) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = NO;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = NO;
            self.matrixA8.hidden = NO;
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
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = NO;
            self.matrixB8.hidden = NO;
            self.matrixB9.hidden = YES;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = NO;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = NO;
            self.result8.hidden = NO;
            self.result9.hidden = YES;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 2x4");

        }
        else if (row == 8) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = YES;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = YES;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = NO;
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
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = YES;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = YES;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = NO;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 3x1");

            
        }
        else if (row == 9) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = NO;
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
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = NO;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = NO;
            self.result10.hidden = NO;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 3x2");

            
        }
        else if (row == 10) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = NO;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = NO;
            self.matrixA11.hidden = NO;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = YES;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = NO;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = NO;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = NO;
            self.matrixB11.hidden = NO;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = NO;
            self.result8.hidden = YES;
            self.result9.hidden = NO;
            self.result10.hidden = NO;
            self.result11.hidden = NO;
            self.result12.hidden = YES;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 3x3");
            
    }
        else if (row == 11) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = NO;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = NO;
            self.matrixA8.hidden = NO;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = NO;
            self.matrixA11.hidden = NO;
            self.matrixA12.hidden = NO;
            self.matrixA13.hidden = YES;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = NO;
            self.matrixB4.hidden = NO;
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = NO;
            self.matrixB8.hidden = NO;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = NO;
            self.matrixB11.hidden = NO;
            self.matrixB12.hidden = NO;
            self.matrixB13.hidden = YES;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = NO;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = NO;
            self.result8.hidden = NO;
            self.result9.hidden = NO;
            self.result10.hidden = NO;
            self.result11.hidden = NO;
            self.result12.hidden = NO;
            self.result13.hidden = YES;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 3x4");
            
        }
        else if (row == 12) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = YES;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = YES;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = YES;
            self.matrixA11.hidden = YES;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = NO;
            self.matrixA14.hidden = YES;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = YES;
            self.matrixB3.hidden = YES;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = YES;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = YES;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = NO;
            self.matrixB14.hidden = YES;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = YES;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = YES;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = NO;
            self.result10.hidden = YES;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = NO;
            self.result14.hidden = YES;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
        
            NSLog(@"sets matrix 4x1");
            
        }
        else if (row == 13) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = YES;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = YES;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = NO;
            self.matrixA11.hidden = YES;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = NO;
            self.matrixA14.hidden = NO;
            self.matrixA15.hidden = YES;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = YES;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = YES;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = NO;
            self.matrixB11.hidden = YES;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = NO;
            self.matrixB14.hidden = NO;
            self.matrixB15.hidden = YES;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = YES;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = YES;
            self.result8.hidden = YES;
            self.result9.hidden = NO;
            self.result10.hidden = NO;
            self.result11.hidden = YES;
            self.result12.hidden = YES;
            self.result13.hidden = NO;
            self.result14.hidden = NO;
            self.result15.hidden = YES;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 4x2");
            
        }
        else if (row == 14) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = YES;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = NO;
            self.matrixA8.hidden = YES;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = NO;
            self.matrixA11.hidden = NO;
            self.matrixA12.hidden = YES;
            self.matrixA13.hidden = NO;
            self.matrixA14.hidden = NO;
            self.matrixA15.hidden = NO;
            self.matrixA16.hidden = YES;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = NO;
            self.matrixB4.hidden = YES;
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = NO;
            self.matrixB8.hidden = YES;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = NO;
            self.matrixB11.hidden = NO;
            self.matrixB12.hidden = YES;
            self.matrixB13.hidden = NO;
            self.matrixB14.hidden = NO;
            self.matrixB15.hidden = NO;
            self.matrixB16.hidden = YES;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = YES;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = NO;
            self.result8.hidden = YES;
            self.result9.hidden = NO;
            self.result10.hidden = NO;
            self.result11.hidden = NO;
            self.result12.hidden = YES;
            self.result13.hidden = NO;
            self.result14.hidden = NO;
            self.result15.hidden = NO;
            self.result16.hidden = YES;
            
            NSLog(@"sets matrix 4x3");

        }
        else if (row == 15) {
            self.matrixA1.hidden = NO;
            self.matrixA2.hidden = NO;
            self.matrixA3.hidden = NO;
            self.matrixA4.hidden = NO;
            self.matrixA5.hidden = NO;
            self.matrixA6.hidden = NO;
            self.matrixA7.hidden = NO;
            self.matrixA8.hidden = NO;
            self.matrixA9.hidden = NO;
            self.matrixA10.hidden = NO;
            self.matrixA11.hidden = NO;
            self.matrixA12.hidden = NO;
            self.matrixA13.hidden = NO;
            self.matrixA14.hidden = NO;
            self.matrixA15.hidden = NO;
            self.matrixA16.hidden = NO;
            
            self.matrixB1.hidden = NO;
            self.matrixB2.hidden = NO;
            self.matrixB3.hidden = NO;
            self.matrixB4.hidden = NO;
            self.matrixB5.hidden = NO;
            self.matrixB6.hidden = NO;
            self.matrixB7.hidden = NO;
            self.matrixB8.hidden = NO;
            self.matrixB9.hidden = NO;
            self.matrixB10.hidden = NO;
            self.matrixB11.hidden = NO;
            self.matrixB12.hidden = NO;
            self.matrixB13.hidden = NO;
            self.matrixB14.hidden = NO;
            self.matrixB15.hidden = NO;
            self.matrixB16.hidden = NO;
            
            self.result1.hidden = NO;
            self.result2.hidden = NO;
            self.result3.hidden = NO;
            self.result4.hidden = NO;
            self.result5.hidden = NO;
            self.result6.hidden = NO;
            self.result7.hidden = NO;
            self.result8.hidden = NO;
            self.result9.hidden = NO;
            self.result10.hidden = NO;
            self.result11.hidden = NO;
            self.result12.hidden = NO;
            self.result13.hidden = NO;
            self.result14.hidden = NO;
            self.result15.hidden = NO;
            self.result16.hidden = NO;
            
            NSLog(@"sets matrix 4x4");

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

- (IBAction)addButton:(id)sender {
    int resultA = [_matrixA1.text intValue] + [_matrixB1.text intValue];
    _result1.text = [NSString stringWithFormat:@"%d", resultA];
    
    int resultB = [_matrixA2.text intValue] + [_matrixB2.text intValue];
    _result2.text = [NSString stringWithFormat:@"%d", resultB];
    
    int resultC = [_matrixA3.text intValue] + [_matrixB3.text intValue];
    _result3.text = [NSString stringWithFormat:@"%d", resultC];
    
    int resultD = [_matrixA4.text intValue] + [_matrixB4.text intValue];
    _result4.text = [NSString stringWithFormat:@"%d", resultD];
    
    int resultE = [_matrixA5.text intValue] + [_matrixB5.text intValue];
    _result5.text = [NSString stringWithFormat:@"%d", resultE];
    
    int resultF = [_matrixA6.text intValue] + [_matrixB6.text intValue];
    _result6.text = [NSString stringWithFormat:@"%d", resultF];
    
    int resultG = [_matrixA7.text intValue] + [_matrixB7.text intValue];
    _result7.text = [NSString stringWithFormat:@"%d", resultG];
    
    int resultH = [_matrixA8.text intValue] + [_matrixB8.text intValue];
    _result8.text = [NSString stringWithFormat:@"%d", resultH];
    
    int resultI = [_matrixA9.text intValue] + [_matrixB9.text intValue];
    _result9.text = [NSString stringWithFormat:@"%d", resultI];
    
    int resultJ = [_matrixA10.text intValue] + [_matrixB10.text intValue];
    _result10.text = [NSString stringWithFormat:@"%d", resultJ];
    
    int resultK = [_matrixA11.text intValue] + [_matrixB11.text intValue];
    _result11.text = [NSString stringWithFormat:@"%d", resultK];
    
    int resultL = [_matrixA12.text intValue] + [_matrixB12.text intValue];
    _result12.text = [NSString stringWithFormat:@"%d", resultL];
    
    int resultM = [_matrixA13.text intValue] + [_matrixB13.text intValue];
    _result13.text = [NSString stringWithFormat:@"%d", resultM];
    
    int resultN = [_matrixA14.text intValue] + [_matrixB14.text intValue];
    _result14.text = [NSString stringWithFormat:@"%d", resultN];
    
    int resultO = [_matrixA15.text intValue] + [_matrixB15.text intValue];
    _result15.text = [NSString stringWithFormat:@"%d", resultO];
    
    int resultP = [_matrixA16.text intValue] + [_matrixB16.text intValue];
    _result16.text = [NSString stringWithFormat:@"%d", resultP];
    
    NSLog(@"Add Button Pressed, results displayed");

}
#pragma mark - Text Field Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_matrixA1 resignFirstResponder];
    
    return YES;
}

@end
