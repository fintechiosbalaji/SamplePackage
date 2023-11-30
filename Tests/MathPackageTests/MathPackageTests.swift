import XCTest
@testable import MathPackage

final class MathPackageTests: XCTestCase {

    func testSquare() {
        XCTAssertEqual(MathUtils.square(2), 4)
        XCTAssertEqual(MathUtils.square(5), 25)
        XCTAssertEqual(MathUtils.square(-3), 9)
    }

    static var allTests = [
        ("testSquare", testSquare),
    ]
}
