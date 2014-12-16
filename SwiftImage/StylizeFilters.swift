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