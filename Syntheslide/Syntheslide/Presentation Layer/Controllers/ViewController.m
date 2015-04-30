//
//  ViewController.m
//  Syntheslide
//
//  Created by Ourangzaib khan on 4/30/15.
//  Copyright (c) 2015 Ourangzaib khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    self.user_name_textfield.delegate=self;
    self.password_text_field.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{

    
    if (textField==self.user_name_textfield) {
        self.layoutconstraint.constant=-20;
    }
    
    if (textField==self.password_text_field) {
        self.layoutconstraint.constant=-80;
        self.user_name_textfield.hidden=YES;
    }

}

-(void)dismissKeyboard {
    self.layoutconstraint.constant=40;
    self.user_name_textfield.hidden=NO;
    self.password_text_field.hidden=NO;
    [self.user_name_textfield resignFirstResponder];
    [self.password_text_field resignFirstResponder];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (void)viewTapped:(UITapGestureRecognizer *)tgr
//{
//    NSLog(@"view tapped");
//    
//}

@end
