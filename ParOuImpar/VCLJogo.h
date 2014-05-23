//
//  VCLJogo.h
//  ParOuImpar
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLJogo : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *txtResultadoCPU;
@property (weak, nonatomic) IBOutlet UILabel *txtResultadoJogador;
@property (weak, nonatomic) IBOutlet UILabel *txtResultadoFinal;
@property (nonatomic) int escolhaCPU;
@property (nonatomic) int numeroCPU;
@property (nonatomic) int valorFinal;
@property (nonatomic) NSString* resultadoFinal;

-(IBAction)tryAgain:(id)sender;
-(void)valueChosenCPU;
-(void)updateLabel;
-(void)setWinner;
@end
