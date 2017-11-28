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

- (IBAction)didSelect:(id)sender;

@end

