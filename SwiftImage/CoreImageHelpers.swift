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

public typealias Filter = CIImage -> CIImage

public typealias CIParameters = Dictionary<String, AnyObject>

// MARK: - Composition Operator

infix operator ~~> { associativity left }

func ~~> (filter1: Filter, filter2: Filter) -> Filter {
    return { img in filter2(filter1(img)) }
}

// MARK: - CIVector

extension CIVector {
    convenience init(color: UIColor){
        var r :CGFloat = 0
        var g :CGFloat = 0
        var b :CGFloat = 0
        var a :CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        self.init(x: r, y: g, z: b, w: a)
    }
}

func colorGenerator(color: UIColor) -> Filter {
    return { _ in
        let filter = CIFilter(name:"CIConstantColorGenerator", withInputParameters: [kCIInputColorKey: CIColor(color: color)!])
        return filter.outputImage
    }
}

func colorOverlay(color: UIColor) -> Filter {
    return { image in
        let overlay = colorGenerator(color)(image)
        return sourceOverCompositing(overlay)(image)
    }
}


