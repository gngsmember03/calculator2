//
//  SCCalculatorViewController.m
//  SecondCalculator
//
//  Created by Jaesung Moon on 2014. 2. 5..
//  Copyright (c) 2014년 Jaesung Moon. All rights reserved.
//

#import "SCCalculatorViewController.h"

@interface SCCalculatorViewController ()

@end

@implementation SCCalculatorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}
//숫자버튼 클릭 이벤트
- (IBAction)numberButtonClicked:(id)sender {
    NSLog(@"%s",__FUNCTION__);
    NSInteger inputNumber =  [sender tag];
    NSLog(@"inputNumber = %d",inputNumber);
//    beforeNumber = inputNumber - 100;
//    NSLog(@"beforeNumber = %f",beforeNumber);

    if([_labelDisplay.text isEqualToString:@"0"]){
        [_labelDisplay setText:[NSString stringWithFormat:@"%d",inputNumber-100]];
    }else{
        NSString *text = _labelDisplay.text;
        [_labelDisplay setText:[NSString stringWithFormat:@"%@%d",text,inputNumber-100]];
    }
}

//사칙연산버튼 클릭
- (IBAction)calButtonClicked:(id)sender {
        NSLog(@"%s",__FUNCTION__);
    NSInteger inputNumber =  [sender tag];
    calculatorMode = inputNumber;
    NSString *beforeText = _labelDisplay.text;
    beforeNumber = [beforeText floatValue];
    NSLog(@"beforeNumber %f",beforeNumber);
    [_labelDisplay setText:@"0"];
}
//계산하는 로직
- (IBAction)equalButtonClicked:(id)sender {
    NSLog(@"%s",__FUNCTION__);
    NSString *afterText = _labelDisplay.text;
    afterNumber = [afterText floatValue];
    float sum;
    switch (calculatorMode) {
        case kPlus:
            sum = beforeNumber + afterNumber;
            break;
        case kMinus:
            sum = beforeNumber - afterNumber;
            break;
        case kMultipy:
            sum = beforeNumber * afterNumber;
            break;
        case kDivide:
            sum = beforeNumber / afterNumber;
            break;
    }
    [_labelDisplay setText:[NSString stringWithFormat:@"%f",sum]];
}

//부호변경
- (IBAction)changeDigitButtonClicked:(id)sender {
    NSLog(@"%s",__FUNCTION__);
    if([_labelDisplay.text isEqualToString:@"0"]){
    }else{
        NSString *text = _labelDisplay.text;
        [_labelDisplay setText:[NSString stringWithFormat:@"-%@",text]];
    }
}
//소숫점 버튼
- (IBAction)dotButtonClicked:(id)sender {
    NSLog(@"%s",__FUNCTION__);
    if([_labelDisplay.text isEqualToString:@"0"]){
    }else{
        NSString *text = _labelDisplay.text;
        [_labelDisplay setText:[NSString stringWithFormat:@"%@.",text]];
    }
}

//리셋버튼
- (IBAction)resetButtonClicked:(id)sender {
        NSLog(@"%s",__FUNCTION__);
    calculatorMode = 0;
    [_labelDisplay setText:@"0"];
    
}
//닫기버튼
- (IBAction)closeButtonClicked:(id)sender {
    NSLog(@"%s",__FUNCTION__);
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
