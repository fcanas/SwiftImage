//
//  Gradients.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

func gaussianGradient(color0: UIColor, color1: UIColor, radius: Float) -> Filter {
    return { _ in
        let parameters = [
            "inputColor0": CIColor(CGColor: color0.CGColor),
            "inputColor1": CIColor(CGColor: color1.CGColor),
            kCIInputRadiusKey: radius
        ]
        let filter = CIFilter(name:"CIGaussianGradient", withInputParameters: parameters)
        return filter.outputImage
    }
}

func linearGradient(color0: UIColor, color1: UIColor, point0: CGPoint, point1: CGPoint) -> Filter {
    return { _ in
        let parameters = [
            "inputColor0": CIColor(CGColor: color0.CGColor),
            "inputColor1": CIColor(CGColor: color1.CGColor),
            "inputPoint0": CIVector(CGPoint: point0),
            "inputPoint1": CIVector(CGPoint: point1)
        ]
        let filter = CIFilter(name:"CILinearGradient", withInputParameters: parameters)
        return filter.outputImage
    }
}

func radialGradient(color0: UIColor, color1: UIColor, radius0: Float, radius1: Float, center: CGPoint) -> Filter {
    return { _ in
        let parameters = [
            "inputColor0": CIColor(CGColor: color0.CGColor),
            "inputColor1": CIColor(CGColor: color1.CGColor),
            "inputradius0": radius0,
            "inputRadius1": radius1,
            "inputCenter": CIVector(CGPoint: center)
        ]
        let filter = CIFilter(name:"CIRadialGradient", withInputParameters: parameters)
        return filter.outputImage
    }
}

func smoothLinearGradient(color0: UIColor, color1: UIColor, point0: CGPoint, point1: CGPoint) -> Filter {
    return { _ in
        let parameters = [
            "inputColor0": CIColor(CGColor: color0.CGColor),
            "inputColor1": CIColor(CGColor: color1.CGColor),
            "inputPoint0": CIVector(CGPoint: point0),
            "inputPoint1": CIVector(CGPoint: point1)
        ]
        let filter = CIFilter(name:"CISmoothLinearGradient", withInputParameters: parameters)
        return filter.outputImage
    }
}
