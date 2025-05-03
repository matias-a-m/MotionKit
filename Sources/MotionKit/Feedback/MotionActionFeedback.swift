#if canImport(UIKit)
import UIKit

@available(iOS 15.0, macOS 10.15, *)
public enum MotionActionFeedback {
    case success, warning, error, lightTap, select

    public func trigger() {
        switch self {
        case .success: MotionFeedback.notification(.success)
        case .warning: MotionFeedback.notification(.warning)
        case .error: MotionFeedback.notification(.error)
        case .lightTap: MotionFeedback.impact(.light)
        case .select: MotionFeedback.selection()
        }
    }
}
#endif