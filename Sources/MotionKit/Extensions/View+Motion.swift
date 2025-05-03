import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public extension View {
    func motionTransition(_ transition: AnyTransition) -> some View {
        self.transition(transition)
    }

    func motionEffect(_ animation: Animation) -> some View {
        self.animation(animation, value: UUID())
    }
}