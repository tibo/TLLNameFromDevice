//
//  ViewController.m
//  Sample
//
//  Created by Thibaut LE LEVIER on 1/8/13.
//  Copyright (c) 2013 Thibaut LE LEVIER. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+NameFromDevice.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.helloFullName.text = [NSString stringWithFormat:@"Hello %@ !",[[UIDevice currentDevice] fullNameFromDevice]];
    self.firstnameField.text = [[UIDevice currentDevice] firstName];
    self.lastnameField.text = [[UIDevice currentDevice] lastName];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
