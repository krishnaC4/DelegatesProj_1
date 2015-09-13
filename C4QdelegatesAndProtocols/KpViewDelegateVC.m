//
//  KpViewDelegateVC.m
//  C4QdelegatesAndProtocols
//
//  Created by Krishna Picart on 9/12/15.
//  Copyright (c) 2015 Krishna Picart. All rights reserved.
//

#import "KpViewDelegateVC.h"

@implementation KpViewDelegateVC

//@required

 //returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
    }

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return 6;
    
}
-(void)viewDidLoad {
    
    [super viewDidLoad];
    self.colorArray = [[NSArray alloc] initWithObjects:@"Blue",@"Green",@"Orange",@"Purple",@"Red",@"Yellow",nil];
    self.picker.delegate = self;
     self.picker.dataSource = self;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.colorArray objectAtIndex:row];
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component{
    
  NSLog(@"Selected Row %ld",(long)row);
    switch(row)
    {
            
        case 0:
            self.color.text = @"Blue #0000FF";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green: 0.0f/255.0f blue:255.0f/255.0f alpha:255.0f/255.0f];
            break;
        case 1:
            self.color.text = @"Green #00FF00";
            self.color.textColor = [UIColor colorWithRed:0.0f/255.0f green: 255.0f/255.0f blue:0.0f/255.0f alpha:255.0f/255.0f];
            break;
        case 2:
            self.color.text = @"Orange #FF681F";
            self.color.textColor = [UIColor colorWithRed:205.0f/255.0f green:   140.0f/255.0f blue:31.0f/255.0f alpha:255.0f/255.0f];
            break;
        case 3:
            self.color.text = @"Purple #FF00FF";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:   0.0f/255.0f blue:255.0f/255.0f alpha:255.0f/255.0f];
            break;
        case 4:
            self.color.text = @"Red #FF0000";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:   0.0f/255.0f blue:0.0f/255.0f alpha:255.0f/255.0f];
            break;
        case 5:
            self.color.text = @"Yellow #FFFF00";
            self.color.textColor = [UIColor colorWithRed:255.0f/255.0f green:   255.0f/255.0f blue:0.0f/255.0f alpha:255.0f/255.0f];
            break;
    }
    
}


@end
