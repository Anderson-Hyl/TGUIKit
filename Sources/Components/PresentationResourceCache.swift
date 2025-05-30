import Foundation
import CoreGraphics

public actor PresentationsResourceCache {
    
    private var imageCache: [Int32: CGImage] = [:]
    private var objectCache: [Int32: Any] = [:]
    
    public init() {}
    
    public func image(for key: Int32, generate: () -> CGImage) -> CGImage {
        if let cached = imageCache[key] {
            return cached
        } else {
            let image = generate()
            imageCache[key] = image
            return image
        }
    }
    
    public func object(for key: Int32, generate: () -> Any) -> Any {
        if let cached = objectCache[key] {
            return cached
        } else {
            let obj = generate()
            objectCache[key] = obj
            return obj
        }
    }
}
