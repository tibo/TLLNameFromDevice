//
//  UIDevice+UnitTests.m
//  Sample
//
//  Created by Thibaut LE LEVIER on 1/9/13.
//  Copyright (c) 2013 Thibaut LE LEVIER. All rights reserved.
//

#import "UIDevice+UnitTests.h"
#import <OCMock/OCMock.h>
#import "NSObject+SupersequentImplementation.h"
#import "UIDevice+NameFromDevice.h"

static UIDevice *_mockedCurrentDevice = nil;

@implementation UIDevice (UnitTests)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
+(UIDevice *)currentDevice
{
    if (_mockedCurrentDevice)
        return _mockedCurrentDevice;
    
    return invokeSupersequentNoParameters();
}
#pragma clang diagnostic pop

+(id)createMockedCurrentDevice
{
    _mockedCurrentDevice = [OCMockObject mockForClass:[UIDevice class]];
    return _mockedCurrentDevice;
}

+(id)createNicelyMockedCurrentDevice
{
    _mockedCurrentDevice = [OCMockObject niceMockForClass:[UIDevice class]];
    return _mockedCurrentDevice;
}

+(void)releaseInstance {
    _mockedCurrentDevice = nil;
}

@end
