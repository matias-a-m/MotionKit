import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public extension View {
    func onTapWithHaptic(_ feedback: @escaping () -> Void) -> some View {
        self.onTapGesture {
            #if canImport(UIKit)
            MotionFeedback.selection()
            #endif
            feedback()
        }
    }
}