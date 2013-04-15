//
//  DetailViewController.m
//  Foodplace
//
//  Created by Juan Patino on 4/1/13.
//  Copyright (c) 2013 Juan Patino. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    // Initialize each restaurant with a
    // name
    // cuisine
    // entree
    // appetizer
    // dessert
    // wine
    
    
    Restaurant *chatNChew = [Restaurant new];
    chatNChew.name = @"Chat 'N' Chew";
    chatNChew.cuisine = @"American";
    chatNChew.entree = 15;
    chatNChew.appetizer = 8;
    chatNChew.dessert = 10;
    chatNChew.wine = 30;
    
    chatNChew.image = [UIImage imageNamed:@"chatNChew.jpg"];
    
    Restaurant *steakFrites = [Restaurant new];
    steakFrites.name = @"Steak Frites";
    steakFrites.cuisine = @"Steakhouse";
    steakFrites.entree = 20;
    steakFrites.appetizer = 12;
    steakFrites.dessert = 15;
    steakFrites.wine = 50;
    
    steakFrites.image = [UIImage imageNamed:@"steakFrites.jpg"];
    
    Restaurant *coffeeShopBar = [Restaurant new];
    coffeeShopBar.name = @"Coffe Shop Bar";
    coffeeShopBar.cuisine = @"Trendy Frufru";
    coffeeShopBar.entree = 20;
    coffeeShopBar.appetizer = 12;
    coffeeShopBar.dessert = 15;
    coffeeShopBar.wine = 50;
    
    coffeeShopBar.image = [UIImage imageNamed:@"coffeeShopBar.jpg"];
    
    
    self.navigationItem.title = coffeeShopBar.name;
    self.nameLabel.text = coffeeShopBar.name;
    
    self.cuisineLabel.text = coffeeShopBar.cuisine;
    
    self.restaurantImage.image = coffeeShopBar.image;
    
    /*
    int numberOfGuests = 4;
    
    float priceOfDinner = [self priceOfDinnerForGuests:numberOfGuests];
    
    NSString *someText = [NSString stringWithFormat:@"$%.2f", priceOfDinner];

    self.detailDescriptionLabel.text = someText;
    
    NSLog(@"Price of Dinner is %.2f for %d guests", priceOfDinner, numberOfGuests);
     */
    
    float priceOfDinner = [coffeeShopBar priceOfDinnerForGuests:4];
    
    NSString *someText = [NSString stringWithFormat:@"$%.2f", priceOfDinner];
    
    self.detailDescriptionLabel.text = someText;

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
