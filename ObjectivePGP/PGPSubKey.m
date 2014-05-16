//
//  PGPSubKey.m
//  ObjectivePGP
//
//  Created by Marcin Krzyzanowski on 16/05/14.
//  Copyright (c) 2014 Marcin Krzyżanowski. All rights reserved.
//

#import "PGPSubKey.h"

@interface PGPSubKey ()
@property (strong, readwrite) id <PGPPacket> packet;
@end

@implementation PGPSubKey

- (instancetype) initWithPacket:(id <PGPPacket>)packet
{
    if (self = [self init]) {
        self.packet = packet;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@",[super description], [self.packet description]];
}

@end
