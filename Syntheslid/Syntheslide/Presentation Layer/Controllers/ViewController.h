//
//  ViewController.h
//  Syntheslide
//
//  Created by Ourangzaib khan on 4/30/15.
//  Copyright (c) 2015 Ourangzaib khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *user_name_textfield;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *layoutconstraint;

@property (weak, nonatomic) IBOutlet UITextField *password_text_field;

@end

