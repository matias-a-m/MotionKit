import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public struct MotionAnimator {
    public static func animate(_ curve: MotionCurve, duration: Double) -> Animation {
        curve.animated(duration: duration)
    }

    public static func reversible(duration: Double) -> Animation {
        .easeInOut(duration: duration).repeatCount(2, autoreverses: true)
    }

    public static func motionSafe(_ animation: Animation) -> Animation {
        if UIAccessibility.isReduceMotionEnabled {
            return .default
        } else {
            return animation
        }
    }
}