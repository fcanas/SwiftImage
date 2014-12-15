//
//  HalftoneEffect.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

func circularScreen(center: CGPoint, width: Float, sharpness: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputWidthKey:width,
            kCIInputCenterKey:CIVector(CGPoint:center),
            "inputSharpness":sharpness,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CICircularScreen", withInputParameters:parameters)
        return filter.outputImage
    }
}

func CMYKHalftone(center: CGPoint, width: Float, angle: Float, sharpness: Float, grayComponentReplacement: Float, underColorRemoval: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputWidthKey:width,
            kCIInputCenterKey:CIVector(CGPoint:center),
            kCIInputAngleKey:width,
            "inputSharpness":sharpness,
            "inputCGR":grayComponentReplacement,
            "inputUCR":underColorRemoval,
            kCIInputImageKey: image]
        let filter = CIFilter(name:"CICMYKHalftone", withInputParameters:parameters)
        return filter.outputImage
    }
}

func dotScreen(center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return screen("CIDotScreen")(center:center, width:width, angle:angle, sharpness:sharpness)
}

func hatchedScreen(center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return screen("CIHatchedScreen")(center:center, width:width, angle:angle, sharpness:sharpness)
}

func lineScreen(center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return screen("CILineScreen")(center:center, width:width, angle:angle, sharpness:sharpness)
}

private func screen(name: String) -> (center: CGPoint, width: Float, angle: Float, sharpness: Float) -> Filter {
    return { center, width, angle, sharpness in
        return { image in
            let parameters : CIParameters = [
                kCIInputWidthKey:width,
                kCIInputCenterKey:CIVector(CGPoint:center),
                kCIInputAngleKey:width,
                "inputSharpness":sharpness,
                kCIInputImageKey: image]
            let filter = CIFilter(name:name, withInputParameters:parameters)
            return filter.outputImage
        }
    }
}
