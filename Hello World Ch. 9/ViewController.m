//
//  ViewController.m
//  Hello World Ch. 9
//
//  Created by Doug Anderson on 5/12/14.
//  Copyright (c) 2014 Doug Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtName;

@property (weak, nonatomic) IBOutlet UILabel *lblOutput;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showOutput:(UIButton *)sender {
    NSString *name = [_txtName text];
    NSString *output = [NSString stringWithFormat:
                        @"Hello World", name];
    
    [_lblOutput setText:output];

}

- (IBAction)backgroundTap:(id)sender
{
    [self.view endEditing:YES];
}

@end
