import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public enum MotionCurve {
    case easeIn, easeOut, easeInOut, linear

    public var animation: Animation {
        switch self {
        case .easeIn: return .easeIn
        case .easeOut: return .easeOut
        case .easeInOut: return .easeInOut
        case .linear: return .linear
        }
    }

    public func animated(duration: Double) -> Animation {
        self.animation.speed(1 / duration)
    }
}