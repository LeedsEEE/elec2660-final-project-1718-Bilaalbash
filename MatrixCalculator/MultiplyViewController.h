//
//  MultiplyViewController.h
//  MatrixCalculator
//
//  Created by Bilaal Bashir on 21/11/2017.
//  Copyright © 2017 Bilaal Bashir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MultiplyViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *firstPickerMultiply;

@property (weak, nonatomic) IBOutlet UIPickerView *secondPickerMultiply;



@end
