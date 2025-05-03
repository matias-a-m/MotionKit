import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public struct MotionDemoView: View {
    @State private var show = false

    public init() {}

    public var body: some View {
        VStack(spacing: 24) {
            if show {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .transition(.motionPop)
            }

            Button("Mostrar") {
                withAnimation(MotionAnimator.motionSafe(.easeOut(duration: MotionStyle.medium))) {
                    show.toggle()
                }
                #if canImport(UIKit)
                MotionActionFeedback.select.trigger()
                #endif
            }
        }
        .padding()
    }
}