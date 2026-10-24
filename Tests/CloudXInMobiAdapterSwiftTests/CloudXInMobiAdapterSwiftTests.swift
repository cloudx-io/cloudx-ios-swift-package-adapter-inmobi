import CloudXInMobiAdapter
import CloudXInMobiAdapterPackage
import XCTest

final class CloudXInMobiAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXInMobiAdapterVersion, "11.5.0.0")
        XCTAssertNotNil(NSClassFromString("CLXInMobiInitializer"))
    }
}
