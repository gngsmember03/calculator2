//
//  SCCalculatorViewController.h
//  SecondCalculator
//
//  Created by Jaesung Moon on 2014. 2. 5..
//  Copyright (c) 2014년 Jaesung Moon. All rights reserved.
//

#import <UIKit/UIKit.h>

enum CalType{
    kPlus = 200,
    kMinus,
    kMultipy,
    kDivide,
};


@interface SCCalculatorViewController : UIViewController{
    
    float beforeNumber;
    float afterNumber;
    int calculatorMode;
}
@property (strong, nonatomic) IBOutlet UILabel *labelDisplay;

- (IBAction)equalButtonClicked:(id)sender;

- (IBAction)numberButtonClicked:(id)sender;
- (IBAction)calButtonClicked:(id)sender;
- (IBAction)changeDigitButtonClicked:(id)sender;
- (IBAction)resetButtonClicked:(id)sender;
- (IBAction)closeButtonClicked:(id)sender;

- (IBAction)dotButtonClicked:(id)sender;


@end
