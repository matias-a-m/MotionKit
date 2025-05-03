import XCTest
@testable import MotionKit

@available(iOS 15.0, macOS 10.15, *)
final class MotionPresetTests: XCTestCase {
    func testBouncePreset() {
        let animation = MotionPreset.bounce()
        XCTAssertNotNil(animation)
    }

    func testEaseOutFast() {
        let animation = MotionPreset.easeOutFast()
        XCTAssertNotNil(animation)
    }
}