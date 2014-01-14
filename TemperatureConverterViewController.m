//
//  TemperatureConverterViewController.m
//  NewTemperatureConverter
//
//  Created by Madhukar Mulpuri on 1/11/14.
//  Copyright (c) 2014 Madhukar Mulpuri. All rights reserved.
//

#import "TemperatureConverterViewController.h"

@interface TemperatureConverterViewController ()
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UITextField *fahrenHeitTextBox;
@property (weak, nonatomic) IBOutlet UITextField *celsiusTextbox;
- (IBAction)convertButtonTouchDown:(id)sender;
- (IBAction)fTextChanged:(id)sender;
- (IBAction)fEditingDidEnd:(id)sender;
- (IBAction)cEditingDidEnd:(id)sender;
- (IBAction)fEditingChanged:(id)sender;
- (IBAction)cEditingChanged:(id)sender;

@end

@implementation TemperatureConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
     NSLog(@"view did Load");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertButtonTouchDown:(id)sender {
     NSLog(@"convertButtonTouchDown");
}

- (IBAction)fTextChanged:(id)sender {
     NSLog(@"fTextChanged");
}

- (IBAction)fEditingDidEnd:(id)sender {
    NSLog(@"fEditingDidEnd");
}

- (IBAction)cEditingDidEnd:(id)sender {
}

- (IBAction)fEditingChanged:(id)sender {
      NSLog(@"fEditingChanged");
    //Deduct 32, then multiply by 5, then divide by 9
    float fahrenheitEntered = [self.fahrenHeitTextBox.text floatValue];
    float celsius = ((fahrenheitEntered - 32.0) * 5.0)/9.0;
    self.celsiusTextbox.text = [NSString stringWithFormat:@"%0.2f", celsius];
}

- (IBAction)cEditingChanged:(id)sender {
    //Multiply by 9, then divide by 5, then add 32
    float celsiusEntered = [self.celsiusTextbox.text floatValue];
    float fahrenheit = ((celsiusEntered * 9.0) / 5.0) + 32.0;
    self.fahrenHeitTextBox.text = [NSString stringWithFormat:@"%0.2f", fahrenheit];
}
@end
