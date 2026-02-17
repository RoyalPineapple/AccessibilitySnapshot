#if !SWIFT_PACKAGE
import Foundation

private class BundleModuleLocator {}

extension Bundle {
    /// Provides `Bundle.module` equivalent for Xcode project builds.
    /// In SPM builds, this is automatically generated.
    static var module: Bundle {
        Bundle(for: BundleModuleLocator.self)
    }
}
#endif
