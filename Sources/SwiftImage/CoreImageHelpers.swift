//
//  CoreImageHelpers.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/11/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

// https://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html

import UIKit
import CoreImage

public typealias Filter = (CIImage?) -> CIImage?

public typealias CIParameters = Dictionary<String, Any>

// MARK: - Composition Operator

precedencegroup ImageFilterPrecedence {
    associativity: left
}
infix operator ~~> : ImageFilterPrecedence

public func ~~> (filter1: @escaping Filter, filter2: @escaping Filter) -> Filter {
    return { img in filter2(filter1(img)) }
}

// MARK: - CIVector

public extension CIVector {
    convenience init(color: UIColor){
        var r :CGFloat = 0
        var g :CGFloat = 0
        var b :CGFloat = 0
        var a :CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        self.init(x: r, y: g, z: b, w: a)
    }
}

func colorOverlay(color: UIColor) -> Filter {
    return { image in
        let overlay = colorGenerator(color: color)(image)!
        return sourceOverCompositing(overlay: overlay)(image)
    }
}


