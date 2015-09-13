//
//  KpViewDelegateVC.h
//  C4QdelegatesAndProtocols
//
//  Created by Krishna Picart on 9/12/15.
//  Copyright (c) 2015 Krishna Picart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KpViewDelegateVC : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *color;
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *colorArray;

@end
