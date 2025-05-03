import XCTest
@testable import MotionKit

@available(iOS 15.0, macOS 10.15, *)
final class MotionStyleTests: XCTestCase {
    func testMotionStyleDurations() {
        XCTAssertGreaterThan(MotionStyle.medium, MotionStyle.short)
        XCTAssertLessThan(MotionStyle.short, MotionStyle.long)
    }
}