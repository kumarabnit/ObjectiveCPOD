//
//  ViewController.m
//  ObjectiveCPOD
//
//  Created by Kumar Abnit on 16/08/18.
//  Copyright © 2018 Kumar Abnit. All rights reserved.
//

#import "ViewController.h"
#import <JVFloatLabeledTextField/JVFloatLabeledTextField.h>
#import <TPMGCommon/TPMGCommon-umbrella.h>
#import "Alamofire-Swift.h"
#import "ObjectiveCPOD-Swift.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet JVFloatLabeledTextField *myTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    [TPMGAlertView showAlertWithMessage:@"Test Messgae" title:@"Test Title" cancelButtonTitle:TPMGAlertViewCancelButtonTitleOK];
    SessionDelegate * session = [[SessionDelegate alloc]init];
    NSLog(@"Session %@",session);
    RangeSlider *range = [[RangeSlider alloc]init];
    [range testMethodForAlmaoFire];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
