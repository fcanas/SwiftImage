import XCTest
@testable import SwiftImage

final class SwiftImageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftImage().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
