@import CloudXInMobiAdapter;
@import CloudXInMobiAdapterPackage;
@import XCTest;

@interface CloudXInMobiAdapterObjCTests : XCTestCase
@end

@implementation CloudXInMobiAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXInMobiAdapterVersion, @"11.5.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXInMobiInitializer"));
}

@end
