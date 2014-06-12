//
//  NMSSH_Tests.m
//  NMSSH Tests
//
//  Created by Andrew Grant on 6/11/14.
//  Copyright (c) 2014 Nine Muses AB. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NMSSHSession.h"

@interface NMSSH_Tests : XCTestCase

@end

@implementation NMSSH_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testConnection
{
    NMSSHSession *session = [NMSSHSession connectToHost:@"192.168.0.18" withUsername:@"andrew"];
    XCTAssert(session, @"Session NOT connected");
    [session authenticateByPassword:@"mbssucks"];
    XCTAssert(session.authorized, @"Session NOT authorized");
}

@end
