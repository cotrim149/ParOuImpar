//
//  VCLViewController.m
//  ParOuImpar
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLViewController.h"

@interface VCLViewController ()

@end

@implementation VCLViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.numbers = [[NSArray alloc] initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5", nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.numbers count];
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.numbers objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    switch (row) {
        case 0:
            NSLog(@"0");
            break;
        case 1:
            NSLog(@"01");
            break;
        case 2:
            NSLog(@"02");
            break;
        case 3:
            NSLog(@"03");
            break;
        case 4:
            NSLog(@"04");
            break;
        case 5:
            NSLog(@"05");
            break;
            
        default:
            break;
    }
}

-(IBAction)selectSegment:(id)sender{
    UISegmentedControl *segmented = (UISegmentedControl*)sender;
    
    if(segmented.selectedSegmentIndex == 0){
        NSLog(@"Par");
    }
    if(segmented.selectedSegmentIndex == 1){
        NSLog(@"Impar");
    }
    
}

-(IBAction)clickPlay:(id)sender{
    NSLog(@"PLAY");
}

@end
