//
//  VCLViewController.m
//  ParOuImpar
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLViewController.h"
#import "VCLJogo.h"

@interface VCLViewController ()

@end

@implementation VCLViewController

static VCLViewController *controller = nil;

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
    [self defaultObject];
    [self defaultObject].escolhaJogador=2;
    
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
            [self defaultObject].numeroJogador = 0;
            break;
        case 1:
            [self defaultObject].numeroJogador = 1;
            break;
        case 2:
            [self defaultObject].numeroJogador = 2;
            break;
        case 3:
            [self defaultObject].numeroJogador = 3;
            break;
        case 4:
            [self defaultObject].numeroJogador = 4;
            break;
        case 5:
            [self defaultObject].numeroJogador = 5;
            break;
            
        default:
            [self defaultObject].numeroJogador = 0;
            break;
    }
}

-(IBAction)selectSegment:(id)sender{
    UISegmentedControl *segmented = (UISegmentedControl*)sender;
    if(segmented.selectedSegmentIndex == 0){
        [self defaultObject].escolhaJogador = 2;
    }
    if(segmented.selectedSegmentIndex == 1){
        [self defaultObject].escolhaJogador = 1;
    }
    
}

-(IBAction)clickPlay:(id)sender{
    VCLJogo *telaJogo = [[VCLJogo alloc]init];
    [self presentViewController:telaJogo animated:NO completion:nil];
}

-(VCLViewController*)defaultObject{
    if(controller == nil){
        controller = [[VCLViewController alloc] init];
    }
    return  controller;
}

@end
