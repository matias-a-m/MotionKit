import XCTest
@testable import MotionKit

@available(iOS 15.0, macOS 10.15, *)
final class MotionAnimatorTests: XCTestCase {
    func testEaseInAnimation() {
        let animation = MotionAnimator.animate(.easeIn, duration: 0.3)
        XCTAssertNotNil(animation)
    }

    func testReversibleAnimation() {
        let animation = MotionAnimator.reversible(duration: 0.4)
        XCTAssertNotNil(animation)
    }
}