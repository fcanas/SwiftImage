//
//  BlurFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

// MARK: - CICategoryBlur

@availability(iOS, unavailable)
public func boxBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIBoxBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

@availability(iOS, unavailable)
public func discBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIDiscBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

@availability(iOS, unavailable)
public func medianBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMedianBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

@availability(iOS, unavailable)
public func motionBlur(radius: Double, angle: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputAngleKey: angle, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

@availability(iOS, unavailable)
public func noiseReduction(inputNoiseLevel: Double, inputSharpness: Double) -> Filter {
    return { image in
        let parameters : CIParameters = ["inputNoiseLevel": inputNoiseLevel, "inputSharpness": inputSharpness, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

public func gaussianBlur(radius: Double) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIGaussianBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}
