//
//  ViewController.m
//  Autolayout
//
//  Created by thanhvu on 9/15/19.
//  Copyright © 2019 thanhvu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *content1BottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *content2BottomConstraint;
@property (weak, nonatomic) IBOutlet UIView *content1View;
@property (weak, nonatomic) IBOutlet UIView *content2View;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self tap1DidTap:nil];
    // Do any additional setup after loading the view.
}

- (IBAction)tap1DidTap:(id)sender {
    self.content1BottomConstraint.priority = 999;
    self.content2BottomConstraint.priority = 222;
    self.content1View.hidden = NO;
    self.content2View.hidden = YES;
}

- (IBAction)tap2DidTap:(id)sender {
    self.content2BottomConstraint.priority = 999;
    self.content1BottomConstraint.priority = 222;
    self.content2View.hidden = NO;
    self.content1View.hidden = YES;
}

@end
