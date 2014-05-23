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
    
    switch (controller.numeroJogador) {
        case 0:
            self.imageJogador = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"finger_0_hand.jpg"]];
            self.imageJogador.frame = CGRectMake(68, 306, 170, 170);
            [self.view addSubview:self.imageJogador];
            NSLog(@"zero jogador");
            break;
        case 1:
            self.imageJogador = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1_hand.jpg"]];
            self.imageJogador.frame = CGRectMake(68, 306, 170, 170);
            [self.view addSubview:self.imageJogador];
            break;
        case 2:
            self.imageJogador = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2_hand.jpg"]];
            self.imageJogador.frame = CGRectMake(68, 306, 170, 170);
            [self.view addSubview:self.imageJogador];
            break;
        case 3:
            self.imageJogador = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3_hand.jpg"]];
            self.imageJogador.frame = CGRectMake(68, 306, 170, 170);
            [self.view addSubview:self.imageJogador];
            break;
        case 4:
            self.imageJogador = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4_hand.jpg"]];
            self.imageJogador.frame = CGRectMake(68, 306, 170, 170);
            [self.view addSubview:self.imageJogador];
            break;
        case 5:
            self.imageJogador = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"5_hand.jpg"]];
            self.imageJogador.frame = CGRectMake(68, 306, 170, 170);
            [self.view addSubview:self.imageJogador];
            break;
            
        default:
            NSLog(@"DEFAULt");
            break;
    }

    switch (self.numeroCPU) {
        case 0:
            self.imageCPU =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"finger_0_hand.jpg"]];
            self.imageCPU.frame = CGRectMake(68, 73, 170, 170);
            [self.view addSubview:self.imageCPU];
            break;
        case 1:
            self.imageCPU =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1_hand.jpg"]];
            self.imageCPU.frame = CGRectMake(68, 73, 170, 170);
            [self.view addSubview:self.imageCPU];
            break;
        case 2:
            self.imageCPU =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2_hand.jpg"]];
            self.imageCPU.frame = CGRectMake(68, 73, 170, 170);
            [self.view addSubview:self.imageCPU];
            break;
        case 3:
            self.imageCPU =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3_hand.jpg"]];
            self.imageCPU.frame = CGRectMake(68, 73, 170, 170);
            [self.view addSubview:self.imageCPU];
            break;
        case 4:
            self.imageCPU =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4_hand.jpg"]];
            self.imageCPU.frame = CGRectMake(68, 73, 170, 170);
            [self.view addSubview:self.imageCPU];
            break;
        case 5:
            self.imageCPU =[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"5_hand.jpg"]];
            self.imageCPU.frame = CGRectMake(68, 73, 170, 170);
            [self.view addSubview:self.imageCPU];
            break;
        default:
            break;
    }
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
