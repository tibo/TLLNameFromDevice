//
//  UIDevice+UnitTests.h
//  Sample
//
//  Created by Thibaut LE LEVIER on 1/9/13.
//  Copyright (c) 2013 Thibaut LE LEVIER. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (UnitTests)

+(id)createMockedCurrentDevice;
+(id)createNicelyMockedCurrentDevice;
+(void)releaseInstance;

@end
