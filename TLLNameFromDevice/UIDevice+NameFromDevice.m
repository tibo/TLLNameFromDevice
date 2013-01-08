//
//  UIDevice+NameFromDevice.m
//  Sample
//
//  Created by Thibaut LE LEVIER on 1/8/13.
//  Copyright (c) 2013 Thibaut LE LEVIER. All rights reserved.
//

#import "UIDevice+NameFromDevice.h"

@implementation UIDevice (NameFromDevice)

static NSString *_name = nil;

-(NSString *)fullNameFromDevice
{
    if (_name)
        return _name;
    
    
    if (![self deviceNameContainDeviceKind])
        return nil;
    
    
    NSArray *patternArray = [NSArray arrayWithObjects:@"%@ ", @" %@", //basic without auxiliary
                                                        @"'s %@", // en
                                                        @"%@ of ", // en
                                                         @"%@ de ", // fr
                             nil];
    
    
    for (NSString *pattern in patternArray)
    {
        NSString *name = [self usernameWithPattern:pattern];
        if (name)
            _name = name;
    }
    
    return _name;
}

-(NSString *)firstName
{
    NSString *fullName = [self fullNameFromDevice];
    
    if (!fullName)
        return nil;
    
    NSRange firstSpace = [fullName rangeOfString:@" "];
    
    if (firstSpace.location != NSNotFound)
        return [fullName substringWithRange:NSMakeRange(0, firstSpace.location)];
    
    return nil;
}

-(NSString *)lastName
{
    NSString *fullName = [self fullNameFromDevice];
    
    if (!fullName)
        return nil;
    
    NSRange firstSpace = [fullName rangeOfString:@" "];
    
    if (firstSpace.location != NSNotFound)
        return [fullName substringWithRange:NSMakeRange(firstSpace.location+1, fullName.length-(firstSpace.location+1))];
    
    return nil;
}

-(BOOL)deviceNameContainDeviceKind
{
    return [self.name rangeOfString:@"iPhone"].location != NSNotFound
    || [self.name rangeOfString:@"iPod"].location != NSNotFound
    || [self.name rangeOfString:@"iPad"].location != NSNotFound;
}

-(NSString *)deviceTypeName
{    
    if ([self.model rangeOfString:@"iPhone"].location != NSNotFound)
        return @"iPhone";
    
    if ([self.model rangeOfString:@"iPod"].location != NSNotFound)
        return @"iPod";
    
    if ([self.model rangeOfString:@"iPad"].location != NSNotFound)
        return @"iPad";
    
    return nil;
}

-(NSString *)usernameWithPattern:(NSString *)pattern
{    
    NSRange range = [self.name rangeOfString:[NSString stringWithFormat:pattern,[self deviceTypeName]]];
    
    if (range.location == NSNotFound)
        return nil;

    if (range.location == 0)
        return [self.name substringWithRange:NSMakeRange(range.length, self.name.length-(range.length))];
    else
        return [self.name substringWithRange:NSMakeRange(0,range.location)];
    
    return nil;
}


@end
