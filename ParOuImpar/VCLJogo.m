//
//  VCLJogo.m
//  ParOuImpar
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLJogo.h"
#import "VCLViewController.h"
@interface VCLJogo ()

@end

@implementation VCLJogo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self valueChosenCPU];
    [self setWinner];
    [self updateLabel];
    // Do any additional setup after loading the view from its nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)tryAgain:(id)sender{
    [self dismissViewControllerAnimated:NO completion:nil];
}

-(void)updateLabel{
    VCLViewController *controller = [[VCLViewController alloc] init];
    controller = [controller defaultObject];
    self.txtResultadoJogador.text = [NSString stringWithFormat:@"%d",controller.numeroJogador ];
    self.txtResultadoCPU.text = [NSString stringWithFormat:@"%d",self.numeroCPU];
    self.txtResultadoFinal.text = self.resultadoFinal;
    
}

-(void)valueChosenCPU{
    self.numeroCPU = arc4random_uniform(6);
}

-(void)setWinner{
    VCLViewController *controller = [[VCLViewController alloc] init];
    controller = [controller defaultObject];
    
    self.valorFinal = controller.numeroJogador + self.numeroCPU;
    
    if((self.valorFinal % 2 == 0)){
        if((controller.escolhaJogador == 2)){
            self.resultadoFinal = @"GANHOU!";
        }else{
            self.resultadoFinal = @"PERDEU!";
        }
    }else{
        if((controller.escolhaJogador == 1)){
            self.resultadoFinal = @"GANHOU!";
        }else{
            self.resultadoFinal = @"PERDEU!";
        }

    }
    
}

@end
