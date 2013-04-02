//
//  DetailViewController.h
//  Foodplace
//
//  Created by Juan Patino on 4/1/13.
//  Copyright (c) 2013 Juan Patino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UITextField *guestsTextField;

@end
