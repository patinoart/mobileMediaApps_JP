//
//  Restaurant.m
//  Foodplace
//
//  Created by Juan Patino on 4/8/13.
//  Copyright (c) 2013 Juan Patino. All rights reserved.
//

#import "Restaurant.h"

@implementation Restaurant

@synthesize name;
@synthesize cuisine;
@synthesize entree;
@synthesize appetizer;
@synthesize dessert;
@synthesize wine;
@synthesize image;

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
