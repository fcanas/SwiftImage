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
public func boxBlur(radius: Float) -> Filter {return radiusFilter("CIBoxBlur")(radius:radius)}

@availability(iOS, unavailable)
public func discBlur(radius: Float) -> Filter {return radiusFilter("CIDiscBlur")(radius:radius)}

@availability(iOS, unavailable)
public func medianBlur(radius: Float) -> Filter {return radiusFilter("CIMedianBlur")(radius:radius)}

@availability(iOS, unavailable)
public func motionBlur(radius: Float, angle: Float) -> Filter {
    return { image in
        let parameters : CIParameters = [kCIInputRadiusKey: radius, kCIInputAngleKey: angle, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

@availability(iOS, unavailable)
public func noiseReduction(inputNoiseLevel: Float, inputSharpness: Float) -> Filter {
    return { image in
        let parameters : CIParameters = ["inputNoiseLevel": inputNoiseLevel, "inputSharpness": inputSharpness, kCIInputImageKey: image]
        let filter = CIFilter(name:"CIMotionBlur", withInputParameters:parameters)
        return filter.outputImage
    }
}

public func gaussianBlur(radius: Float) -> Filter {return radiusFilter("CIGaussianBlur")(radius:radius)}
