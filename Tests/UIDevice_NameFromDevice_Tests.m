//
//  UIDevice_NameFromDevice_Tests.m
//  Sample
//
//  Created by Thibaut LE LEVIER on 1/8/13.
//  Copyright (c) 2013 Thibaut LE LEVIER. All rights reserved.
//

#import "UIDevice_NameFromDevice_Tests.h"

#import <OCMock/OCMock.h>

#import "UIDevice+NameFromDevice.h"

@implementation UIDevice_NameFromDevice_Tests

-(void)setUp
{
    self.firstName = @"John";
    self.lastName = @"Doe";
    self.fullName = [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
    
    self.currentDeviceMock = [OCMockObject partialMockForObject:[UIDevice currentDevice]];
}

-(void)tearDown
{
    self.firstName = nil;
    self.lastName = nil;
    self.fullName = nil;
}

-(void)test_BasicENName_shouldReturnValues
{
    //unfinished
//    NSString *format = @"%@ %@'s iPhone";
//    
//    NSString *fakeName = [NSString stringWithFormat:format,self.firstName,self.lastName];
//    
//    [[[self.currentDeviceMock stub] andReturn:fakeName] name];
//    
//    NSLog(@"%@",[self.currentDeviceMock name]);
//    NSLog(@"%@",[self.currentDeviceMock fullNameFromDevice]);
//    NSLog(@"%@",[self.currentDeviceMock firstName]);
//    NSLog(@"%@",[self.currentDeviceMock lastName]);
//    
//    STAssertEqualObjects(self.fullName, [self.currentDeviceMock fullNameFromDevice], nil);
//    STAssertEqualObjects(self.firstName, [self.currentDeviceMock firstName], nil);
//    STAssertEqualObjects(self.lastName, [self.currentDeviceMock lastName], nil);
}


@end
