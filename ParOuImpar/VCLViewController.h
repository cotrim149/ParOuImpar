//
//  VCLViewController.h
//  ParOuImpar
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmented;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (nonatomic)NSArray *numbers;

-(IBAction)selectSegment:(id)sender;
-(IBAction)clickPlay:(id)sender;
@end
