import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public extension AnyTransition {
    static var motionFade: AnyTransition { .opacity }
    static var motionSlide: AnyTransition { .move(edge: .bottom) }
    static var motionScale: AnyTransition { .scale }

    static var motionPop: AnyTransition {
        .asymmetric(
            insertion: .scale.combined(with: .opacity),
            removal: .move(edge: .bottom).combined(with: .opacity)
        )
    }
}