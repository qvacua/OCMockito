//
//  OCMockito - MKTOngoingStubbing.m
//  Copyright 2013 Jonathan M. Reid. See LICENSE.txt
//
//  Created by: Jon Reid, http://qualitycoding.org/
//  Source: https://github.com/jonreid/OCMockito
//

#import "MKTOngoingStubbing.h"

#import "MKTInvocationContainer.h"


@implementation MKTOngoingStubbing
{
    MKTInvocationContainer *_invocationContainer;
}

- (instancetype)initWithInvocationContainer:(MKTInvocationContainer *)invocationContainer
{
    self = [super init];
    if (self)
        _invocationContainer = invocationContainer;
    return self;
}

- (MKTOngoingStubbing *)willReturn:(id)object
{
    [_invocationContainer addAnswer:object];
    return self;
}

- (MKTOngoingStubbing *)willReturnBool:(BOOL)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnChar:(char)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnInt:(int)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnShort:(short)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnLong:(long)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnLongLong:(long long)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnInteger:(NSInteger)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnUnsignedChar:(unsigned char)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnUnsignedInt:(unsigned int)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnUnsignedShort:(unsigned short)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnUnsignedLong:(unsigned long)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnUnsignedLongLong:(unsigned long long)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnUnsignedInteger:(NSUInteger)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnFloat:(float)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

- (MKTOngoingStubbing *)willReturnDouble:(double)value
{
    [_invocationContainer addAnswer:@(value)];
    return self;
}

#if TARGET_OS_MAC
- (MKTOngoingStubbing *)willReturnPoint:(NSPoint)value
{
    [_invocationContainer addAnswer:[NSValue valueWithPoint:value]];
    return self;
}

- (MKTOngoingStubbing *)willReturnSize:(NSSize)value
{
    [_invocationContainer addAnswer:[NSValue valueWithSize:value]];
    return self;
}

- (MKTOngoingStubbing *)willReturnRect:(NSRect)value
{
    [_invocationContainer addAnswer:[NSValue valueWithRect:value]];
    return self;
}

- (MKTOngoingStubbing *)willReturnRange:(NSRange)value
{
    [_invocationContainer addAnswer:[NSValue valueWithRange:value]];
    return self;
}
#endif

#pragma mark MKTPrimitiveArgumentMatching

- (id)withMatcher:(id <HCMatcher>)matcher forArgument:(NSUInteger)index
{
    [_invocationContainer setMatcher:matcher atIndex:index];
    return self;
}

- (id)withMatcher:(id <HCMatcher>)matcher
{
    return [self withMatcher:matcher forArgument:0];
}

@end
