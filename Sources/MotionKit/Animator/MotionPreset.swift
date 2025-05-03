import SwiftUI

@available(iOS 15.0, macOS 10.15, *)
public enum MotionPreset {
    public static func bounce() -> Animation {
        Animation.interpolatingSpring(stiffness: 170, damping: 15)
    }

    public static func easeOutFast() -> Animation {
        .easeOut(duration: MotionStyle.short)
    }

    public static func easeInSlow() -> Animation {
        .easeIn(duration: MotionStyle.long)
    }
}