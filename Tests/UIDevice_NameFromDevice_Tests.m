//
//  UIDevice_NameFromDevice_Tests.m
//  Sample
//
//  Created by Thibaut LE LEVIER on 1/8/13.
//  Copyright (c) 2013 Thibaut LE LEVIER. All rights reserved.
//

#import "UIDevice_NameFromDevice_Tests.h"

#import <OCMock/OCMock.h>

#import "UIDevice+UnitTests.h"
#import "UIDevice+NameFromDevice.h"

@implementation UIDevice_NameFromDevice_Tests

-(void)setUp
{
    self.firstName = @"John";
    self.lastName = @"Doe";
    self.fullName = [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
    
    self.mockedDevice = [UIDevice createNicelyMockedCurrentDevice];
}

-(void)tearDown
{
    self.firstName = nil;
    self.lastName = nil;
    self.fullName = nil;
    [UIDevice releaseInstance];
}


#pragma mark UIDevice mock checks

-(void)test_mockedDevice_shouldBeEqualToCurrentDevice
{
    self.mockedDevice = [UIDevice createMockedCurrentDevice];
    
    STAssertEqualObjects(self.mockedDevice, [UIDevice currentDevice], nil);
}

-(void)test_stubedDeviceName_shouldBeEqualToCurrentDeviceName
{
    
    
    NSString *format = @"%@ %@'s iPhone";
    NSString *fakeiPhoneName = [NSString stringWithFormat:format,self.firstName,self.lastName];
    
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];
    
    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    
}

#pragma mark test langages

-(void)test_BasicENName_shouldReturnValues
{
    NSString *fakeiPhoneName = [NSString stringWithFormat:@"%@'s iPhone", self.fullName];
    
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];
    
    NSLog(@"name : %@",[[UIDevice currentDevice] name]);
    NSLog(@"fullname : %@",[[UIDevice currentDevice] fullNameFromDevice]);
    NSLog(@"firstname : %@",[[UIDevice currentDevice] firstName]);
    NSLog(@"lastname : %@",[[UIDevice currentDevice] lastName]);
    
    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] fullNameFromDevice], self.fullName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] firstName], self.firstName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] lastName], self.lastName, nil);
}

-(void)test_OtherENName_shouldReturnValues
{
    NSString *fakeiPhoneName = [NSString stringWithFormat:@"%@’s iPhone", self.fullName];
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];

    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] fullNameFromDevice], self.fullName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] firstName], self.firstName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] lastName], self.lastName, nil);
}

-(void)test_FirstNameENName_shouldReturnValues
{
    NSString *fakeiPhoneName = [NSString stringWithFormat:@"%@’s iPhone", self.firstname];
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];

    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] firstName], self.firstName, nil);
}

-(void)test_OfENName_shouldReturnValues
{
    NSString *fakeiPhoneName = [NSString stringWithFormat:@"iPhone of %@", self.firstname];
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];

    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] fullNameFromDevice], self.fullName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] firstName], self.firstName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] lastName], self.lastName, nil);
}

-(void)test_BasicFRName_shouldReturnValues
{
    NSString *fakeiPhoneName = [NSString stringWithFormat:@"iPhone de %@", self.fullName];
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];

    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] fullNameFromDevice], self.fullName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] firstName], self.firstName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] lastName], self.lastName, nil);
}

-(void)test_BasicITName_shouldReturnValues
{
    NSString *fakeiPhoneName = [NSString stringWithFormat:@"iPhone di %@", self.fullName];
    [[[self.mockedDevice stub] andReturn:fakeiPhoneName] name];

    STAssertEqualObjects([self.mockedDevice name], [[UIDevice currentDevice] name], nil);
    STAssertEqualObjects([[UIDevice currentDevice] name], fakeiPhoneName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] fullNameFromDevice], self.fullName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] firstName], self.firstName, nil);
    STAssertEqualObjects([[UIDevice currentDevice] lastName], self.lastName, nil);
}

@end
