//
//  SecondViewController.h
//  MatrixCalculator
//
//  Created by Bilaal Bashir on 21/11/2017.
//  Copyright © 2017 Bilaal Bashir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubtractViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *firstPickerSubtract;

@property (weak, nonatomic) IBOutlet UIPickerView *secondPickerSubtract;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

- (IBAction)didSelect:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *subtractButton;
- (IBAction)subtractButton:(id)sender;


//MatrixA Textfields
@property (weak, nonatomic) IBOutlet UITextField *matrixA1;
@property (weak, nonatomic) IBOutlet UITextField *matrixA2;
@property (weak, nonatomic) IBOutlet UITextField *matrixA3;
@property (weak, nonatomic) IBOutlet UITextField *matrixA4;
@property (weak, nonatomic) IBOutlet UITextField *matrixA5;
@property (weak, nonatomic) IBOutlet UITextField *matrixA6;
@property (weak, nonatomic) IBOutlet UITextField *matrixA7;
@property (weak, nonatomic) IBOutlet UITextField *matrixA8;
@property (weak, nonatomic) IBOutlet UITextField *matrixA9;
@property (weak, nonatomic) IBOutlet UITextField *matrixA10;
@property (weak, nonatomic) IBOutlet UITextField *matrixA11;
@property (weak, nonatomic) IBOutlet UITextField *matrixA12;
@property (weak, nonatomic) IBOutlet UITextField *matrixA13;
@property (weak, nonatomic) IBOutlet UITextField *matrixA14;
@property (weak, nonatomic) IBOutlet UITextField *matrixA15;
@property (weak, nonatomic) IBOutlet UITextField *matrixA16;

//MatrixB Textfields
@property (weak, nonatomic) IBOutlet UITextField *matrixB1;
@property (weak, nonatomic) IBOutlet UITextField *matrixB2;
@property (weak, nonatomic) IBOutlet UITextField *matrixB3;
@property (weak, nonatomic) IBOutlet UITextField *matrixB4;
@property (weak, nonatomic) IBOutlet UITextField *matrixB5;
@property (weak, nonatomic) IBOutlet UITextField *matrixB6;
@property (weak, nonatomic) IBOutlet UITextField *matrixB7;
@property (weak, nonatomic) IBOutlet UITextField *matrixB8;
@property (weak, nonatomic) IBOutlet UITextField *matrixB9;
@property (weak, nonatomic) IBOutlet UITextField *matrixB10;
@property (weak, nonatomic) IBOutlet UITextField *matrixB11;
@property (weak, nonatomic) IBOutlet UITextField *matrixB12;
@property (weak, nonatomic) IBOutlet UITextField *matrixB13;
@property (weak, nonatomic) IBOutlet UITextField *matrixB14;
@property (weak, nonatomic) IBOutlet UITextField *matrixB15;
@property (weak, nonatomic) IBOutlet UITextField *matrixB16;

//Result Textfields
@property (weak, nonatomic) IBOutlet UITextField *result1;
@property (weak, nonatomic) IBOutlet UITextField *result2;
@property (weak, nonatomic) IBOutlet UITextField *result3;
@property (weak, nonatomic) IBOutlet UITextField *result4;
@property (weak, nonatomic) IBOutlet UITextField *result5;
@property (weak, nonatomic) IBOutlet UITextField *result6;
@property (weak, nonatomic) IBOutlet UITextField *result7;
@property (weak, nonatomic) IBOutlet UITextField *result8;
@property (weak, nonatomic) IBOutlet UITextField *result9;
@property (weak, nonatomic) IBOutlet UITextField *result10;
@property (weak, nonatomic) IBOutlet UITextField *result11;
@property (weak, nonatomic) IBOutlet UITextField *result12;
@property (weak, nonatomic) IBOutlet UITextField *result13;
@property (weak, nonatomic) IBOutlet UITextField *result14;
@property (weak, nonatomic) IBOutlet UITextField *result15;
@property (weak, nonatomic) IBOutlet UITextField *result16;
























@end

