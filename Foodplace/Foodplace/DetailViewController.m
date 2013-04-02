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
    
    int numberOfGuests = 4;
    
    float priceOfDinner = [self priceOfDinnerForGuests:numberOfGuests];
    
    NSString *someText = [NSString stringWithFormat:@"$%.2f", priceOfDinner];

    self.detailDescriptionLabel.text = someText;
    
    NSLog(@"Price of Dinner is %.2f for %d guests", priceOfDinner, numberOfGuests);

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

- (float)priceOfDinnerForGuests:(int)numberOfGuests {
    
    float priceOfDinner;

    // Challenge, calculate the price of dinner
    /*

    Rules:
    • Entrees cost $21.50, and each person buys one
    • Appetizers cost $8.00, and 2 people split one
    • Wine costs $43.00, and 4 people split a bottle
    • Dessert costs $4.75, and each person buys one
    • The restaurant does not sell half bottles of wine
    • Express all prices and counts as variables
     
    this is an example with set number (4) of guests

    float entree = 21.5;
    float appetizer = 8;
    float wine = 43;
    float dessert = 4.75;
    float guests = 4;
    
    */
    
    float entree = 21.5;
    float appetizer = 8;
    float wine = 43;
    float dessert = 4.75;
    float tax = 0.08875;
    float tip = 0.2;

    // every guest eats one entree and dessert
    priceOfDinner = (entree + dessert) * numberOfGuests;
    
    int numberOfAppetizers = ceilf((float)numberOfGuests / 2);
    NSLog(@"Appetizers: %i", numberOfAppetizers);
    
    priceOfDinner += appetizer * numberOfAppetizers;
    
    // find out how many wine bottles do we need
    int numberOfWineBottles = ceilf((float)numberOfGuests / 4);
    NSLog(@"Wine bottles: %i", numberOfWineBottles);
    
    priceOfDinner += wine * numberOfWineBottles;
    
    tax *= priceOfDinner;
    NSLog(@"tax: %f", tax);
    
    tip *= priceOfDinner;
    NSLog(@"tip: %f", tip);
    
    priceOfDinner += tax + tip;
    
    return priceOfDinner;
}

@end
