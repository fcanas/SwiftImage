//
//  StylizeFilters.swift
//  SwiftImage
//
//  Created by Fabian Canas on 12/14/14.
//  Copyright (c) 2014 Fabián Cañas. All rights reserved.
//

import Foundation

public func blendWithAlphaMask(overlay: CIImage, maskImage: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputMaskImageKey: maskImage,
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIBlendWithAlphaMask", withInputParameters: parameters)
        return filter.outputImage
    }
}

public func blendWithMask(overlay: CIImage, maskImage: CIImage) -> Filter {
    return { image in
        let parameters : CIParameters = [
            kCIInputMaskImageKey: maskImage,
            kCIInputBackgroundImageKey: image,
            kCIInputImageKey: overlay
        ]
        let filter = CIFilter(name:"CIBlendWithMask", withInputParameters: parameters)
        return filter.outputImage
    }
}

public func bloom(radius: Float, intensity: Float) -> Filter {
    return radiusIntensityFilter("CIBloom")(radius: radius, intensity: intensity)
}

public func comicEffect() -> Filter { return singularFilter("CIComicEffect") }

public func convolution3X3(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter("CIConvolution3X3")(weights: weights, bias: bias)
}

public func convolution5X5(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter("CIConvolution5X5")(weights: weights, bias: bias)
}

public func convolution7X7(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter("CIConvolution7X7")(weights: weights, bias: bias)
}

public func convolution9Vertical(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter("CIConvolution9Vertical")(weights: weights, bias: bias)
}

public func convolution9Horizontal(weights: CIVector, bias: Float) -> Filter {
    return convolutionFixedFilter("CIConvolution9Horizontal")(weights: weights, bias: bias)
}