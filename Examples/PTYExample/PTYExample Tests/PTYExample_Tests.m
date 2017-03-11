//
//  PTYExample_Tests.m
//  PTYExample Tests
//
//  Created by Andrew Grant on 6/14/14.
//  Copyright (c) 2014 Nine Muses. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <NMSSH/NMSSH.h>

@interface PTYExample_Tests : XCTestCase

@end

@implementation PTYExample_Tests

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
    NMSSHSession *session = [NMSSHSession connectToHost:@"10.0.1.36" withUsername:@"andrew"];
    XCTAssertNotNil(session, @"Session NOT connected");
    [session authenticateByPassword:@"*****"];
    XCTAssertTrue(session.authorized, @"Session NOT authorized");
}

@end
