//
//  DetailViewController.h
//  Foodplace
//
//  Created by Juan Patino on 4/1/13.
//  Copyright (c) 2013 Juan Patino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cuisineLabel;
@property (strong, nonatomic) IBOutlet UIImageView *restaurantImage;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
