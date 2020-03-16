//
//  HalftoneEffect.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

public func circularScreen(center: CGPoint, width: Float, sharpness: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputWidthKey:width,
            kCIInputCenterKey:CIVector(cgPoint:center),
            "inputSharpness":sharpness,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CICircularScreen", parameters:parameters)!
        return filter.outputImage
    }
}

public func CMYKHalftone(center: CGPoint, width: Float, angle: Float, sharpness: Float, grayComponentReplacement: Float, underColorRemoval: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputWidthKey:width,
            kCIInputCenterKey:CIVector(cgPoint:center),
            kCIInputAngleKey:width,
            "inputSharpness":sharpness,
            "inputCGR":grayComponentReplacement,
            "inputUCR":underColorRemoval,
            kCIInputImageKey: image!]
        let filter = CIFilter(name:"CICMYKHalftone", parameters:parameters)!
        return filter.outputImage
    }
}

public func dotScreen(center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return screen(name: "CIDotScreen")(center, width, angle, sharpness)
}

public func hatchedScreen(center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return screen(name: "CIHatchedScreen")(center, width, angle, sharpness)
}

public func lineScreen(center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return screen(name: "CILineScreen")(center, width, angle, sharpness)
}

private func screen(name: String) -> (_ center: CGPoint, _ width: Float, _ angle: Float, _ sharpness: Float) -> Filter {
    return { center, width, angle, sharpness in
        return { image in
            let parameters : CIParameters = [
                kCIInputWidthKey:width,
                kCIInputCenterKey:CIVector(cgPoint:center),
                kCIInputAngleKey:width,
                "inputSharpness":sharpness,
                kCIInputImageKey: image!]
            let filter = CIFilter(name:name, parameters:parameters)!
            return filter.outputImage
        }
    }
}
