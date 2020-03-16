//
//  BlurFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation
import CoreImage

// MARK: - CICategoryBlur

@available(iOS, unavailable)
public func boxBlur(radius: Float) -> Filter {return radiusFilter(name: "CIBoxBlur")(radius)}

@available(iOS, unavailable)
public func discBlur(radius: Float) -> Filter {return radiusFilter(name: "CIDiscBlur")(radius)}

@available(iOS, unavailable)
public func medianBlur(radius: Float) -> Filter {return radiusFilter(name: "CIMedianBlur")(radius)}

@available(iOS, unavailable)
public func motionBlur(radius: Float, angle: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputAngleKey: angle, kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)!
        return filter.outputImage
    }
}

@available(iOS, unavailable)
public func noiseReduction(inputNoiseLevel: Float, inputSharpness: Float) -> Filter {
    return { image in
        let parameters : CIParameters = ["inputNoiseLevel": inputNoiseLevel, "inputSharpness": inputSharpness, kCIInputImageKey: image!]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)!
        return filter.outputImage
    }
}

public func gaussianBlur(radius: Float) -> Filter {return radiusFilter(name: "CIGaussianBlur")(radius)}
